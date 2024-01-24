from rest_framework import serializers
from .models import StudyGoal, StudyPlan, StudySession

class StudyGoalSerializer(serializers.ModelSerializer):
    class Meta:
        model = StudyGoal
        fields = '__all__'

class StudyPlanUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = StudyPlan
        exclude = ['user', 'goal']
