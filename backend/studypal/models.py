from django.db import models
from django.contrib.auth.models import User

class StudyGoal(models.Model):
    PRIORITY_CHOICES = [
        ('high', 'High'),
        ('medium', 'Medium'),
        ('low', 'Low'),
    ]

    STATUS_CHOICES = [
        ('ongoing', 'Ongoing'),
        ('completed', 'Completed'),
    ]

    user = models.ForeignKey(User, on_delete=models.CASCADE)
    description = models.CharField(max_length=255)
    priority = models.CharField(max_length=10, choices=PRIORITY_CHOICES)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES)
    target_completion_date = models.DateField()

    def __str__(self):
        return f"{self.user.username} - {self.description}"


class StudyPlan(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    goal = models.ForeignKey(StudyGoal, on_delete=models.CASCADE)
    recommended_study_sessions = models.ManyToManyField('StudySession')
    study_session_schedule = models.CharField(max_length=255)
    study_materials = models.TextField()

    def __str__(self):
        return f"{self.user.username} - {self.goal.description} Plan"

class StudySession(models.Model):
    plan = models.ForeignKey(StudyPlan, on_delete=models.CASCADE)
    date = models.DateField()
    start_time = models.TimeField()
    end_time = models.TimeField()
    notes = models.TextField()

    def __str__(self):
        return f"{self.plan.user.username} - {self.plan.goal.description} Session"

