import grpc
import recognize_pb2
import recognize_pb2_grpc
from time import sleep

def run():
    with grpc.insecure_channel('0.0.0.0:50052') as channel:
        stub = recognize_pb2_grpc.RecognizerServiceStub(channel)
        result = stub.Recognize(recognize_pb2.RecognizerControl(action=recognize_pb2.START))
        sleep(10)
        result = stub.Recognize(recognize_pb2.RecognizerControl(action=recognize_pb2.STOP))
        print(result)

if __name__ == '__main__':
    run()
