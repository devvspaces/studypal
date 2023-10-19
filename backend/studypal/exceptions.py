class StudyPalException(Exception):
    """Base exception for StudyPal app"""

    pass


class CustomNotFoundException(StudyPalException):
    """Exception raised when a specific item is not found"""

    pass


# Add other custom exceptions as needed.
