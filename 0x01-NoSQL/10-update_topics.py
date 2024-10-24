#!/usr/bin/env python3
'''Task 10: Change school topics
'''


def update_topics(mongo_collection, name, topics):
    '''Changing all topics of a collection's document based on the name.
    '''
    mongo_collection.update_many(
        {'name': name},
        {'$set': {'topics': topics}}
    )
