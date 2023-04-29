import unittest

from src.Person import Person

class PersonTestCase(unittest.TestCase):
    def test_name(self):
        person = Person('Fred', 'Flintstone')
        self.assertEqual(person.name(), 'Fred Flintstone')
