import logging
logger = logging.getLogger(__name__)

import streamlit as st
from modules.nav import SideBarLinks
import requests

st.set_page_config(layout = 'wide')

SideBarLinks()

st.title('Post a Research Opportunity')

# if st.button('Post Research Position', 
#              type='primary',
#              use_container_width=True):
# #   st.switch_page('pages/.py')