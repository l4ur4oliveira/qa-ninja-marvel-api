# from faker import Faker
# faker = Faker()

def factory_thanos():
  return {
    "name": "Thanos de Titã",
    "aliases": "Thanos",
    "age": 3000,
    "team": "Ordem Negra",
    "active": False
  }

def factory_deadpool():
  return {
    "name": "Wade Wilson",
    "aliases": "Deadpool",
    "age": 37,
    "team": "X Force",
    "active": True
  }

def factory_black_widow():
  return {
    "name": "Natasha Romanoff",
    "aliases": "Black Widow",
    "age": 35,
    "team": "Avengers",
    "active": False
  }
