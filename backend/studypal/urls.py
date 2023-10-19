# studypal/urls.py

from django.urls import path
from .views import HelloEndpoint, ExceptionTestEndpoint

urlpatterns = [
    path("hello/", HelloEndpoint.as_view(), name="hello_endpoint"),
    path(
        "exception-test/",
        ExceptionTestEndpoint.as_view(),
        name="exception_test_endpoint",
    ),
]
