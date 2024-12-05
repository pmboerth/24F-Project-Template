import logging
logger = logging.getLogger(__name__)
import pandas as pd
import streamlit as st
import requests
from modules.nav import SideBarLinks

# Call the SideBarLinks from the nav module in the modules directory
SideBarLinks()

# set the header of the page
st.header('Students')

# You can access the session state to make a more customized/personalized app experience
st.write(f"### Hi, {st.session_state['first_name']}.")

# add a button to use get all students
if st.button('See All Students',
             type='primary'):
  results = requests.get('http://api:4000/s/students').json()
  
  if results:
       for student in results:
            student_firstname = student.get('FirstName', 'No First Name')
            student_lastname = student.get('LastName', 'No Last Name')
            student_email = student.get('Email', 'No Email')
            student_skillid = student.get('SkillId', 'No Skill ID')
            student_departmentid = student.get('DepartmentId', 'No Department ID')
            student_interest = student.get('ResearchInterest', 'No Reserach Interest')
            student_year = student.get('Year', 'No Year')
            student_major = student.get('Major', 'No Major')
            student_type = student.get('StudentType', 'No Student Type')
            
            result1 = requests.get(f'http://api:4000/d/departments/d{student_skillid}').json()
            skill_name = result1[0].get('Name', 'No Name')
            
            result2 = requests.get(f'http://api:4000/pr/professors/p{student_departmentid}').json()
            department_name = result2[0].get('Name', 'No Name')
            
            # this html and css was generated by ChatGPT
            st.markdown(f"""
                <div style="border: 1px solid #ddd; padding: 15px; margin-bottom: 10px; border-radius: 5px; box-shadow: 2px 2px 5px rgba(0,0,0,0.1);">
                    <h3 style="margin-bottom: 5px; color: #4CAF50;">{student_firstname + ' ' + student_lastname}</h3>
                    <p style="margin-bottom: 5px; color: #555;"><strong>Email:</strong> {student_email}</p>
                    <p style="margin-bottom: 5px; color: #555;"><strong>Skill:</strong> {skill_name}</p>
                    <p style="margin-bottom: 5px; color: #555;"><strong>Department:</strong> {department_name}</p>
                    <p style="margin-bottom: 5px; color: #555;"><strong>Interest:</strong> {student_interest}</p>
                    <p style="margin-bottom: 5px; color: #555;"><strong>Year:</strong> {student_year}</p>
                    <p style="margin-bottom: 5px; color: #555;"><strong>Major:</strong> {student_major}</p>
                    <p style="margin-bottom: 5px; color: #555;"><strong>Type:</strong> {student_type}</p>
                </div>
            """, unsafe_allow_html=True)
  else:
      st.warning("No Students")


if st.button("Back"):
    st.switch_page('pages/30_Admin_Home.py')