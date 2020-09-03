# bookmark

A bookmark tool to manage all browsers' bookmarks.

## entity、value_object、entity_to_data_transfer_object说明

entity和value_object是在应用程序展示层presentation中直接使用的

entity是有唯一标识符即id的，类似于主键；类型和主键相同的entity表示同一个对象
value_object没有唯一标识符，如果两个类型相同的value_object的所有属性都相同，那么这两个value_object就是等同的

来自于网络或者数据库、内存的数据，还没有转化成entity或者value_object，属于dto，比如书签数据中事件是长整型表示的，
要在presentation中使用，那么就应该转化成DateTime。这样才能让presentation层真正的只是一个展示数据的分层。
