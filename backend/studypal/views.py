from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .utils import logger
from .exceptions import CustomNotFoundException


class HelloEndpoint(APIView):
    def get(self, request, *args, **kwargs):
        logger.debug("HelloEndpoint GET called")
        return Response({"message": "Hello, World!"}, status=status.HTTP_200_OK)


class ExceptionTestEndpoint(APIView):
    def get(self, request):
        try:
            # Some logic
            if (
                True
            ):  # This is just for demonstration. Change the condition as required.
                raise CustomNotFoundException("This is a custom not found exception.")
            return Response({"message": "Everything is OK."}, status=status.HTTP_200_OK)
        except CustomNotFoundException as e:
            return Response({"error": str(e)}, status=status.HTTP_404_NOT_FOUND)
        except Exception as e:
            return Response(
                {"error": "An unexpected error occurred."},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR,
            )
