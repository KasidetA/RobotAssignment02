*** Variables ***
${home_locator.input_txt}                   xpath=//input[@placeholder='input search text']
${home_locator.search_btn}                  xpath=//span[@aria-label="search"]/parent::button
${home_locator.search_txt_product_name}     xpath=//div[@class='ant-card-meta-title' and text()='{{product}}']
