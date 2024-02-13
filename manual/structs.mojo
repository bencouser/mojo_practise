struct Logger:

    fn __init__(inout self):
        pass

    @staticmethod
    fn log_info(message: String):
        print("INFO: " + message)

def main():
    print("Hello World!")
    Logger.log_info("Hello from the logger!")
    var l = Logger()
    l.log_info("Hello from the instance logger!")
