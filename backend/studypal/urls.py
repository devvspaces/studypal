# studypal/urls.py

from django.urls import path,include
from rest_framework.routers import DefaultRouter
from .views import HelloEndpoint, ExceptionTestEndpoint, CreateStudyGoalView, DeleteStudyGoalView, UpdateStudyGoalView, UpdateStudyPlanView

urlpatterns = [
    path("hello/", HelloEndpoint.as_view(), name="hello_endpoint"),
    path('create-study-goal/', CreateStudyGoalView.as_view(), name='create-study-goal'),
    path('delete-study-goal/<int:pk>/', DeleteStudyGoalView.as_view(), name='delete-study-goal'),
    path('update-study-goal/<int:pk>/', UpdateStudyGoalView.as_view(), name='update-study-goal'),
    path('update-study-plan/<int:pk>/', UpdateStudyPlanView.as_view(), name='update-study-plan'),
    
    path(
        "exception-test/",
        ExceptionTestEndpoint.as_view(),
        name="exception_test_endpoint",
    ),
]
