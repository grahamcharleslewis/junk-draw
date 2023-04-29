import unittest
from unittest.mock import MagicMock

class ProductionClass:

    def gimme_three():
        return 99

class TestStringMethods(unittest.TestCase):

    def test_upper(self):
        thing = ProductionClass()
        thing.gimme_three = MagicMock(return_value=3)
        thing.gimme_three(3, 4, 5, key='value')
        thing.gimme_three.assert_called_with(3, 4, 5, key='value')

if __name__ == '__main__':
    unittest.main()
