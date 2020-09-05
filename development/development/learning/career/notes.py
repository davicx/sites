from selenium.webdriver.common.by import By
from selenium.common.exceptions import WebDriverException
from VentacityAutomation.common.CustomEventElement import CustomEventElement
from VentacityAutomation.common.VentacityExceptions import *
from selenium.common.exceptions import NoSuchElementException, JavascriptException
from DeviceConfigModal import DeviceConfigModal
import logging, re

class AirstageConfigModal(DeviceConfigModal):
    """Modal from CONFIGURE button on the Airstage or VRF page"""
    QUIET_OPERATION_DROPDOWN = "quiet_operation_btn"
    CAPACITY_SAVE_DROPDOWN = "capacity_save_btn"
    DATE_TIME_BTN = "date_time_btn"

    def __init__(self, element):
        DeviceConfigModal.__init__(
            self,
            element
        )
        self.locator_dictionary.update({
            self.QUIET_OPERATION_DROPDOWN: (By.XPATH, './/h5[text()="Quiet Operation"]/following-sibling::div/button'),
            self.CAPACITY_SAVE_DROPDOWN: (By.XPATH, './/h5[text()="Capacity Save"]/following-sibling::div/button'),
            self.DATE_TIME_BTN: (By.XPATH, './/button[text()="SET DATE / TIME"]'),
        })





