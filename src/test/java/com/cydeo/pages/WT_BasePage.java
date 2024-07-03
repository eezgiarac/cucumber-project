package com.cydeo.pages;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class WT_BasePage {

    public WT_BasePage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//button[text()='View all orders']") //hepsi aynı olduğu için bu şekilde yaptık sayfadaki bütün textleri alıyoruz.
    public WebElement viewAllOrdersLinK;

    @FindBy(xpath = "//button[text()='View all products']") //hepsi aynı olduğu için bu şekilde yaptık sayfadaki bütün textleri alıyoruz.
    public WebElement viewAllProductsLink;

    @FindBy(xpath = "//button[text()='Order']") //hepsi aynı olduğu için bu şekilde yaptık sayfadaki bütün textleri alıyoruz.
    public WebElement OrderLink;

    @FindBy(xpath = "//button[text()='Logout']") //hepsi aynı olduğu için bu şekilde yaptık sayfadaki bütün textleri alıyoruz.
    public WebElement logOutLink;
}
