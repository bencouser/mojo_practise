import time


def sum_up_to(sumTo):
    sum = 0
    for i in range(sumTo):
        sum += i
    return sum


def main():
    # timing sum
    start_time = time.time()
    sum = sum_up_to(1000000)
    end_time = time.time()
    elapsed_time = end_time - start_time
    print(sum)
    print(f"Elapsed time (python): {elapsed_time} seconds")
