#!/usr/bin/env python
import grpc
import recognize_pb2
import recognize_pb2_grpc
from concurrent import futures

import gi
from time import sleep
gi.require_version('Gst', '1.0')
from gi.repository import GObject, Gst
GObject.threads_init()
Gst.init(None)

pipeline = Gst.Pipeline()

autoaudiosrc = Gst.ElementFactory.make("autoaudiosrc", "autoaudiosrc")
queue = Gst.ElementFactory.make("queue", "queue")
audioconvert = Gst.ElementFactory.make("audioconvert", "audioconvert")
wavenc = Gst.ElementFactory.make("wavenc", "wavenc")
filesink = Gst.ElementFactory.make("filesink", "filesink")
url = "recorded_audio.wav"
filesink.set_property("location",url)
pipeline.add( autoaudiosrc)
pipeline.add( queue)
pipeline.add( audioconvert)
pipeline.add( wavenc)
pipeline.add( filesink)

autoaudiosrc.link( queue)
queue.link( audioconvert)
audioconvert.link( wavenc)
wavenc.link( filesink)

def record_from_microphone():
    bus = pipeline.get_bus()
    pipeline.set_state(Gst.State.PLAYING)
    print('Recording Voice Input')

    sleep(5)

    print("Sending EOS")
    pipeline.send_event(Gst.Event.new_eos())
    print('Ending Pipeline')
    bus.timed_pop_filtered(Gst.CLOCK_TIME_NONE, Gst.MessageType.EOS)
    pipeline.set_state(Gst.State.NULL)

class RecognizerServiceServicer(recognize_pb2_grpc.RecognizerServiceServicer):
    def Recognize(self, request, context):
        if request.start:
            record_from_microphone()
            result = "Audio recorded for 5 seconds."
        else:
            result = "Audio not recorded."
        
        return recognize_pb2.Result(result = result)

def main():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=5))
    recognize_pb2_grpc.add_RecognizerServiceServicer_to_server(RecognizerServiceServicer(), server)
    print("Server running now.")
    server.add_insecure_port('[::]:50052')
    server.start()
    server.wait_for_termination()

main()