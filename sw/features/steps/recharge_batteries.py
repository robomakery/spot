from behave import *

@given('Spot is not at the charging station')
def step_impl(context):
    pass

@when("Spot's battery goes below {percent}%")
def step_impl(context, percent):
    pass

@then('Spot should return to the charging station')
def step_impl(context):
    pass
