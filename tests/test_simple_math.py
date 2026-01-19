import unittest
from cicdtest.Class.SimpleMath import SimpleMath

class TestSimpleMath(unittest.TestCase):

    def test_addition_true(self) -> None:
        a: int = 2
        b: int = 3
        expected: int = 5

        self.assertEqual(SimpleMath.addition(a, b), expected)

    def test_addition_false(self) -> None:
        a: int = 2
        b: int = 9
        expected: int = 5

        self.assertNotEqual(SimpleMath.addition(a, b), expected)

    def test_soustraction_true(self)-> None:
        x:int = 6
        y:int = 3

        expected = 3

        self.assertEqual(SimpleMath.soustraction(6,3),expected)