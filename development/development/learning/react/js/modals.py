import sys
import logging
from time import sleep
from selenium.webdriver import ActionChains

sys.path.append("..")
from VentacityAutomation.common.PageMaster import PageMaster
from VentacityAutomation.common.PageType import PageType
from VentacityAutomation.pages.pagelets.modals.DeviceModal import DeviceModal
from VentacityAutomation.pages.pagelets.modals.WattNodeModal import WattNodeModal
from VentacityAutomation.pages.pagelets.modals.AirstageConfigModal import AirstageConfigModal
from VentacityAutomation.pages.pagelets.modals.CompanyFormModal import CompanyFormModal
from VentacityAutomation.pages.pagelets.modals.EditCompanyModal import EditCompanyModal
from VentacityAutomation.pages.pagelets.modals.AddClientModal import AddClientModal
from VentacityAutomation.pages.pagelets.modals.EditClientModal import EditClientModal
from VentacityAutomation.pages.pagelets.modals.AddDeviceToZoneModal import AddDeviceToZoneModal
from VentacityAutomation.pages.pagelets.modals.DeviceModal import DeviceModal
from VentacityAutomation.pages.pagelets.modals.DeviceConfigModal import DeviceConfigModal
from VentacityAutomation.pages.pagelets.modals.AirstageIndoorUnitModal import AirstageIndoorUnitModal
from VentacityAutomation.pages.pagelets.modals.AddUnitModal import AddUnitModal
from VentacityAutomation.pages.pagelets.modals.AddIndoorUnitModal import AddIndoorUnitModal
from VentacityAutomation.pages.pagelets.modals.LabjackConfigModal import LabjackConfigModal
from VentacityAutomation.pages.pagelets.modals.AddSensorModal import AddSensorModal
from VentacityAutomation.pages.pagelets.modals.EditSensorModal import EditSensorModal
from VentacityAutomation.pages.pagelets.modals.AddDeviceToSiteModal import AddDeviceToSiteModal
from VentacityAutomation.pages.pagelets.modals.ChangePasswordModal import ChangePasswordModal
from VentacityAutomation.pages.pagelets.modals.SetPasswordModal import SetPasswordModal
from VentacityAutomation.pages.pagelets.modals.VS1KServiceModal import VS1KServiceModal
from VentacityAutomation.pages.macro_elements.Toggle import Toggle

if not __name__ == "__main__":
    quit()

logger = logging.getLogger('VA')
logger.setLevel(logging.DEBUG)

consoleHandler = logging.StreamHandler()

# Change 'WARNING' to whatever log level you want to see in the output
consoleHandler.setLevel(logging.ERROR)
# Log levels: DEBUG, INFO, WARNING, ERROR, CRITICAL

formatter = logging.Formatter('%(asctime)s|>%(levelname)s -> %(name)s - %(message)s')
consoleHandler.setFormatter(formatter)
logger.addHandler(consoleHandler)

website = PageMaster('firefox', "https://staging.ventacity.net")
website.expect('LOGIN')
current_page = website.page['LOGIN']

current_page.NEW_ACCNT_BTN.click()
sleep(2)
modal_el = current_page.get_active_modal()
if not modal_el is None:
    modal = SetPasswordModal(modal_el)
    modal.get_element(SetPasswordModal.EMAIL_INPUT).send_keys("abc@test.email")
    modal.get_element(SetPasswordModal.PASS_INPUT).send_keys("abc")
    modal.get_element(SetPasswordModal.CONFIRM_PASS_INPUT).send_keys("123")
    sleep(2)
    current_page.dismiss_modal()
else:
    print "Unable to open set password modal"

current_page.login("tyler.gilbert2@oregonstate.edu", "hvac$Quar3d!")

website.page['PORTFOLIO'].get_site("Martinez Lab").element.click()
sleep(2)
website.expect('DASHBOARD')
current_page = website.page['DASHBOARD']

current_page.NEW_DEVICE_BTN.click()
modal_el = current_page.get_active_modal()
if not modal_el is None:
    modal = AddDeviceToSiteModal(modal_el)
    print "--------- Available Devices ----------"
    i = 1
    for device in modal.devices:
        device[AddDeviceToSiteModal.QTY_INPUT].send_keys(i)
        info = ""
        for key in device:
            if key != AddDeviceToSiteModal.QTY_INPUT:
                info += device[key] + " | "
        print str(info)
        i += 1
    sleep(2)
    modal.get_element(AddDeviceToSiteModal.CANCEL_BTN).click()
    sleep(2)
else:
    print "Unable to open add device modal"

if len(current_page.wattnode_devices) > 0:
    current_page.wattnode_devices[0].click()
    sleep(2)

    modal_el = current_page.get_active_modal()
    if not modal_el is None:
        print "--------- WattNode Form Values ----------"
        modal = WattNodeModal(modal_el)
        print "Name: " + modal.get_element(DeviceModal.NAME_INPUT).get_attribute("value")
        print "Model #: " + modal.get_element(DeviceModal.MODEL_NUMBER_INPUT).get_attribute("value")
        print "Serial #: " + modal.get_element(DeviceModal.SERIAL_NUMBER_INPUT).get_attribute("value")
        print "Device monitored: " + modal.get_element(WattNodeModal.CURRENT_DEVICE_MONITORED).text
        modal.get_element(WattNodeModal.CANCEL_BTN).click()
        sleep(2)
    else:
        print "Unable to open WattNode modal"
else:
    print "No WattNode devices available"

if len(current_page.labjack_devices) > 0:
    current_page.labjack_devices[0].click()
    sleep(2)
    website.expect('UNIT_LABJACK')
    current_page = website.page['UNIT_LABJACK']
    current_page.CONFIGURE_BTN.click()
    sleep(2)

    modal_el = current_page.get_active_modal()
    if not modal_el is None:
        print "--------- Labjack Form Values ----------"
        modal = LabjackConfigModal(modal_el)
        print "Name: " + modal.get_element(DeviceModal.NAME_INPUT).get_attribute("value")
        print "Model #: " + modal.get_element(DeviceModal.MODEL_NUMBER_INPUT).get_attribute("value")
        print "Serial #: " + modal.get_element(DeviceModal.SERIAL_NUMBER_INPUT).get_attribute("value")
        print "Connection Type: " + modal.get_elements(LabjackConfigModal.CONNECTION_TYPE_OPTIONS)[0].text
        print "IP Address: " + modal.get_element(LabjackConfigModal.IP_INPUT).get_attribute("value")
        print "Gateway Address: " + modal.get_element(LabjackConfigModal.GATEWAY_INPUT).get_attribute("value")
        print "Netmask: " + modal.get_element(LabjackConfigModal.NETMASK_INPUT).get_attribute("value")
        modal.get_element(LabjackConfigModal.CONNECTION_TYPE_BTN).click()
        modal.get_element(LabjackConfigModal.CANCEL_BTN).click()
        sleep(2)
    else:
        print "Unable to open Labjack modal"

    current_page.ADD_BTN.click()
    modal_el = current_page.get_active_modal()
    if not modal_el is None:
        modal = AddSensorModal(modal_el)
        modal.get_element(AddSensorModal.SENSOR_TYPE_DROPDOWN_BTN).click()
        modal.get_elements(AddSensorModal.SENSOR_TYPE_DROPDOWN_OPTIONS)[1].click() # Temperature
        modal.get_element(AddSensorModal.NAME_INPUT).send_keys("Test")
        modal.get_element(AddSensorModal.INPUT_PORT_INPUT).send_keys("13")
        modal.get_element(AddSensorModal.MIN_VOLTAGE_INPUT).send_keys("1")
        modal.get_element(AddSensorModal.MAX_VOLTAGE_INPUT).send_keys("2")
        modal.get_element(AddSensorModal.MIN_VALUE_INPUT).send_keys("3")
        modal.get_element(AddSensorModal.MAX_VALUE_INPUT).send_keys("4")
        sleep(2)
        modal.get_element(AddSensorModal.SENSOR_TYPE_DROPDOWN_BTN).click()
        modal.get_elements(AddSensorModal.SENSOR_TYPE_DROPDOWN_OPTIONS)[2].click() # Occupancy
        sleep(2)
        modal.get_element(AddSensorModal.SENSOR_TYPE_DROPDOWN_BTN).click()
        modal.get_elements(AddSensorModal.SENSOR_TYPE_DROPDOWN_OPTIONS)[3].click() # Humidity
        modal.get_element(AddSensorModal.MIN_VOLTAGE_INPUT).send_keys("5")
        modal.get_element(AddSensorModal.MAX_VOLTAGE_INPUT).send_keys("6")
        modal.get_element(AddSensorModal.MIN_VALUE_INPUT).send_keys("7")
        modal.get_element(AddSensorModal.MAX_VALUE_INPUT).send_keys("8")
        sleep(2)
        modal.get_element(AddSensorModal.SENSOR_TYPE_DROPDOWN_BTN).click()
        modal.get_elements(AddSensorModal.SENSOR_TYPE_DROPDOWN_OPTIONS)[4].click() # CO2
        modal.get_element(AddSensorModal.MED_ALERT_LEVEL_INPUT).send_keys("9")
        modal.get_element(AddSensorModal.HIGH_ALERT_LEVEL_INPUT).send_keys("10")
        modal.get_element(AddSensorModal.MIN_VOLTAGE_INPUT).send_keys("11")
        modal.get_element(AddSensorModal.MAX_VOLTAGE_INPUT).send_keys("12")
        modal.get_element(AddSensorModal.MIN_VALUE_INPUT).send_keys("13")
        modal.get_element(AddSensorModal.MAX_VALUE_INPUT).send_keys("14")
        sleep(2)
        modal.get_element(AddSensorModal.SENSOR_TYPE_DROPDOWN_BTN).click()
        modal.get_elements(AddSensorModal.SENSOR_TYPE_DROPDOWN_OPTIONS)[5].click() # VOC
        modal.get_element(AddSensorModal.MIN_VOLTAGE_INPUT).send_keys("15")
        modal.get_element(AddSensorModal.MAX_VOLTAGE_INPUT).send_keys("16")
        modal.get_element(AddSensorModal.MIN_VALUE_INPUT).send_keys("17")
        modal.get_element(AddSensorModal.MAX_VALUE_INPUT).send_keys("18")
        sleep(2)
        modal.get_element(AddSensorModal.CANCEL_BTN).click()
        sleep(2)
    else:
        print "Unable to open add sensor modal"

    current_page.EDIT_SENSOR.click()
    modal_el = current_page.get_active_modal()
    if not modal_el is None:
        print "--------- Sensor Form Values ----------"
        modal = EditSensorModal(modal_el)
        print "Name: " + modal.get_element(AddSensorModal.NAME_INPUT).get_attribute("value")
        print "Port: " + modal.get_element(AddSensorModal.INPUT_PORT_INPUT).get_attribute("value")
        print "Min Voltage: " + modal.get_element(AddSensorModal.MIN_VOLTAGE_INPUT).get_attribute("value")
        print "Max Voltage: " + modal.get_element(AddSensorModal.MAX_VOLTAGE_INPUT).get_attribute("value")
        print "Min Temp: " + modal.get_element(AddSensorModal.MIN_VALUE_INPUT).get_attribute("value")
        print "Max Temp: " + modal.get_element(AddSensorModal.MAX_VALUE_INPUT).get_attribute("value")
        modal.get_element(AddSensorModal.SENSOR_TYPE_DROPDOWN_BTN).click()
        modal.get_element(AddSensorModal.SENSOR_TYPE_DROPDOWN_BTN).click()
        modal.get_element(AddSensorModal.CANCEL_BTN).click()
        sleep(2)
    else:
        print "Unable to open edit sensor modal"
else:
    print "No Labjack devices available"
website.backButton()

website.expect('DASHBOARD')
current_page = website.page['DASHBOARD']
if len(current_page.zone_cards) > 0:
    current_page.zone_cards[0].click()
    sleep(2)
    website.expect('ZONE_DASH')
    current_page = website.page['ZONE_DASH']
    current_page.ADD_DEVICE_BTN.click()

    modal_el = current_page.get_active_modal()
    if not modal_el is None:
        print "--------- Zone Devices ----------"
        modal = AddDeviceToZoneModal(modal_el)
        sleep(2)
        modal.get_element(AddDeviceToZoneModal.SELECT_ALL_BOX).click()
        for device in modal.devices:
            print str(device[AddDeviceToZoneModal.UNIT_NAME] + " -> " + device[AddDeviceToZoneModal.ATTACHED_TO])
        modal.get_element(AddDeviceToZoneModal.SELECT_ALL_BOX).click()
        modal.get_element(AddDeviceToZoneModal.CANCEL_BTN).click()
else:
    print "No zones available"
website.backButton()

website.expect('DASHBOARD')
current_page = website.page['DASHBOARD']
if len(current_page.vs1k_devices) > 0:
    current_page.vs1k_devices[0].click()
    sleep(2)
    website.expect('UNIT_VS1K')
    current_page = website.page['UNIT_VS1K']
    current_page.SERVICE_BTN.click()
    modal_el = current_page.get_active_modal()
    if not modal_el is None:
        modal = VS1KServiceModal(modal_el)
        modal.get_element(VS1KServiceModal.CANCEL_BTN).click()
    else:
        print "Unable to open service modal"
else:
    print "No VS1000 devices available"
website.backButton()

website.expect('DASHBOARD')
current_page = website.page['DASHBOARD']

if len(current_page.airstage_devices) > 0:
    current_page.airstage_devices[0].click()
    sleep(2)
    website.expect('UNIT_AIRSTAGE')
    current_page = website.page['UNIT_AIRSTAGE']
    current_page.CONFIG_BTN.click()
    sleep(2)

    modal_el = current_page.get_active_modal()
    if not modal_el is None:
        print "--------- Airstage Form Values ----------"
        modal = AirstageConfigModal(modal_el)
        print "Name: " + modal.get_element(DeviceModal.NAME_INPUT).get_attribute("value")
        print "Model #: " + modal.get_element(DeviceModal.MODEL_NUMBER_INPUT).get_attribute("value")
        print "Serial #: " + modal.get_element(DeviceModal.SERIAL_NUMBER_INPUT).get_attribute("value")
        print "Ref Address: " + modal.get_element(DeviceConfigModal.REF_ADDRESS_INPUT).get_attribute("value")
        print "Unit Address: " + modal.get_element(DeviceConfigModal.UNIT_ADDRESS_INPUT).get_attribute("value")
        modal.get_element(AirstageConfigModal.QUIET_OPERATION_DROPDOWN).click()
        modal.get_element(AirstageConfigModal.CAPACITY_SAVE_DROPDOWN).click()
        modal.get_element(AirstageConfigModal.CAPACITY_SAVE_DROPDOWN).click() # Have to close the dropdown, otherwise an option might be clicked by the next line
        current_page.dismiss_modal()
        sleep(2)
    else:
        print "Unable to open Airstage modal"

    if len(current_page.UNITS) > 0:
        current_page.UNITS[0].click()
        modal_el = current_page.get_active_modal()
        if not modal_el is None:
            print "--------- Unit Form Values ----------"
            modal = AirstageIndoorUnitModal(modal_el)
            print "Name: " + modal.get_element(DeviceModal.NAME_INPUT).get_attribute("value")
            print "Model #: " + modal.get_element(DeviceModal.MODEL_NUMBER_INPUT).get_attribute("value")
            print "Serial #: " + modal.get_element(DeviceModal.SERIAL_NUMBER_INPUT).get_attribute("value")
            print "Ref Address: " + modal.get_element(AirstageIndoorUnitModal.REF_ADDRESS_INPUT).get_attribute("value")
            print "Unit Address: " + modal.get_element(AirstageIndoorUnitModal.UNIT_ADDRESS_INPUT).get_attribute("value")
            print "Power: " + ("ON" if Toggle(modal.get_element(AirstageIndoorUnitModal.POWER_TOGGLE)).is_on else "OFF")
            print "Current Temp: " + modal.get_element(AirstageIndoorUnitModal.CURRENT_TEMP).get_attribute("value")
            print "Target Temp: " + modal.get_element(AirstageIndoorUnitModal.TARGET_TEMP).get_attribute("value")
            for button in modal.get_elements(AirstageIndoorUnitModal.OPERATION_MODE_BTNS):
                button.click()
            sleep(2)
            print "Airflow: " + modal.get_elements(AirstageIndoorUnitModal.AIRFLOW_DROPDOWN_OPTIONS)[0].text
            modal.get_element(AirstageIndoorUnitModal.AIRFLOW_DROPDOWN_BTN).click()
            print "Economy: " + ("ON" if Toggle(modal.get_element(AirstageIndoorUnitModal.ECONOMY_TOGGLE)).is_on else "OFF")
            print "Antifreeze: " + ("ON" if Toggle(modal.get_element(AirstageIndoorUnitModal.ANTIFREEZE_TOGGLE)).is_on else "OFF")
            print "Vertical Air Direction Position: " + modal.get_elements(AirstageIndoorUnitModal.VERTICAL_POSITION_DROPDOWN_OPTIONS)[0].text
            modal.get_element(AirstageIndoorUnitModal.VERTICAL_POSITION_DROPDOWN_BTN).click()
            modal.get_element(AirstageIndoorUnitModal.VERTICAL_POSITION_DROPDOWN_BTN).click()
            print "Horizontal Air Direction Position: " + modal.get_elements(AirstageIndoorUnitModal.HORIZONTAL_POSITION_DROPDOWN_OPTIONS)[0].text
            modal.get_element(AirstageIndoorUnitModal.HORIZONTAL_POSITION_DROPDOWN_BTN).click()
            modal.get_element(AirstageIndoorUnitModal.HORIZONTAL_POSITION_DROPDOWN_BTN).click()
            print "External Thermo-off Status: " + modal.get_elements(AirstageIndoorUnitModal.EXTERNAL_STATUS_DROPDOWN_OPTIONS)[0].text
            modal.get_element(AirstageIndoorUnitModal.EXTERNAL_STATUS_DROPDOWN_BTN).click()
            modal.get_element(AirstageIndoorUnitModal.EXTERNAL_STATUS_DROPDOWN_BTN).click()
            current_page.dismiss_modal()
            sleep(2)
        else:
            print "Unable to open edit indoor unit modal"
    
    current_page.ADD_OUTDOOR_UNIT_BTN.click()
    modal_el = current_page.get_active_modal()
    if not modal_el == None:
        modal = AddUnitModal(modal_el)
        modal.get_element(DeviceModal.NAME_INPUT).send_keys("Test")
        modal.get_element(DeviceModal.MODEL_NUMBER_INPUT).send_keys("1")
        modal.get_element(DeviceModal.SERIAL_NUMBER_INPUT).send_keys("2")
        modal.get_element(AddDeviceToZoneModal.CANCEL_BTN).click()
        sleep(2)
    else:
        print "Unable to open add outdoor unit modal"

    current_page.ADD_INDOOR_UNIT_BTN.click()
    modal_el = current_page.get_active_modal()
    if not modal_el == None:
        modal = AddIndoorUnitModal(modal_el)
        modal.get_element(AddIndoorUnitModal.MODEL_DROPDOWN_BTN).click()
        modal.get_element(AddIndoorUnitModal.MODEL_DROPDOWN_BTN).click()
        modal.get_element(DeviceModal.NAME_INPUT).send_keys("Test")
        modal.get_element(DeviceModal.MODEL_NUMBER_INPUT).send_keys("1")
        modal.get_element(DeviceModal.SERIAL_NUMBER_INPUT).send_keys("2")
        modal.get_element(AddIndoorUnitModal.TYPE_DROPDOWN_BTN).click()
        modal.get_element(AddIndoorUnitModal.TYPE_DROPDOWN_BTN).click()
        modal.get_element(AddDeviceToZoneModal.CANCEL_BTN).click()
        sleep(2)
    else:
        print "Unable to open add indoor unit modal"
else:
    print "No Airstage devices available"

current_page.SETTINGS_BTN.click()
website.expect('SETTINGS')
current_page = website.page['SETTINGS']

current_page.EDIT_COMPANY_BTN.click()
sleep(2)
print "--------- Company Form Values ----------"
modal = EditCompanyModal(current_page.get_active_modal())
print "Company: " + modal.get_element(CompanyFormModal.COMPANY_INPUT).get_attribute("value")
print "Address: " + modal.get_element(CompanyFormModal.ADDRESS_INPUT).get_attribute("value")
print "Phone #: " + modal.get_element(CompanyFormModal.PHONE_INPUT).get_attribute("value")
print "URL: " + modal.get_element(EditCompanyModal.URL_INPUT).get_attribute("value")
modal.get_element(CompanyFormModal.CANCEL_BTN).click()
sleep(2)

current_page.tab["Clients"].click()
current_page.get_settings()
client_tab = current_page.table
client_tab.ADD_CLIENT_BTN.click()
sleep(2)
modal = AddClientModal(current_page.get_active_modal())
modal.get_element(CompanyFormModal.COMPANY_INPUT).send_keys("Some Company")
modal.get_element(CompanyFormModal.ADDRESS_INPUT).send_keys("123 Example Street")
modal.get_element(CompanyFormModal.PHONE_INPUT).send_keys("(555) 555-5555")
modal.get_element(AddClientModal.EMAIL_INPUT).send_keys("abc@test.email")
sleep(2)
modal.get_element(CompanyFormModal.CANCEL_BTN).click()
sleep(2)

client_tab.clients[2]["EDIT_BTN"].click()
sleep(2)
current_page.get_settings()
current_page.table.EDIT_CLIENT_BTN.click()
sleep(2)
print "--------- Client Form Values ----------"
modal = EditClientModal(current_page.get_active_modal())
print "Company: " + modal.get_element(CompanyFormModal.COMPANY_INPUT).get_attribute("value")
print "Address: " + modal.get_element(CompanyFormModal.ADDRESS_INPUT).get_attribute("value")
print "Phone #: " + modal.get_element(CompanyFormModal.PHONE_INPUT).get_attribute("value")
print "Email: " + modal.get_element(AddClientModal.EMAIL_INPUT).get_attribute("value")
modal.get_element(CompanyFormModal.CANCEL_BTN).click()
sleep(2)

current_page.MY_ACCNT_BTN.click()
website.expect('PROFILE')
current_page = website.page['PROFILE']
current_page.CHANGE_PASS_BTN.click()
modal_el = current_page.get_active_modal()
if not modal_el is None:
    modal = ChangePasswordModal(modal_el)
    modal.get_element(ChangePasswordModal.CURRENT_PASS_INPUT).send_keys("abc")
    modal.get_element(ChangePasswordModal.NEW_PASS_INPUT).send_keys("def")
    modal.get_element(ChangePasswordModal.CONFIRM_NEW_PASS_INPUT).send_keys("ghi")
    sleep(2)
    modal.get_element(ChangePasswordModal.CANCEL_BTN).click()
    sleep(2)
else:
    print "Unable to open change password modal"

website.close()
quit()
