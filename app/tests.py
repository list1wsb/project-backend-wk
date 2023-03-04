import unittest
from main import app

class TestApp(unittest.TestCase):
    def setup(self):
        app.testing = True
        self.app = app.test_client()

    def test_hello_world(self):
        response = self.app.get('/')
        self.assertEqual(response.data.decode(), 'Hello World!')

    def test_hello_name(self):
        response = self.app.post('/hello', data=dict(name='Alice'))
        self.assertEqual(response.data.decode(), 'Hello Alice')

if __name__=='__main__':
    unittest.main()

