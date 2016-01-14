from behave import *
import rospy

@then(u"Spot should have a topic called {topic}")
def step_impl(context, topic):
    topics = rospy.get_published_topics()[0]
    assert topic in topics
