from faker import Faker
faker = Faker()

def factory_character():
    
    return{
            "name": faker.name(),
            "aliases": faker.first_name(),
            "age": 3000,
            "team": "Ordem Negra",
            "active": False
            }
