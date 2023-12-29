from myprj import main

def test_main():
    def test_pass(n):
        assert len(main.password(n)) == n

    test_pass(10)
    test_pass(20)

def test_coverage():
    def test_pass(n):
        assert main.coverage(n) == n

    test_pass(10)
    test_pass(20)

# def test_coverage_fail():
#     def test_pass(n):
#         assert main.coverage(n) == n + 1
#
#     test_pass(10)
#     test_pass(20)