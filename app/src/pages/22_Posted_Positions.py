import logging
logger = logging.getLogger(__name__)

import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

SideBarLinks()

st.title('My Posted Research Positions')


# if st.button('View Submitted Applications', 
#              type='primary',
#              use_container_width=True):
#   st.switch_page('pages/.py')