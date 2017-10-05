package com.db.am.bauhaus.project.pages;

import net.serenitybdd.core.annotations.findby.By;
import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.annotations.DefaultUrl;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by ongshir on 05/10/2016.
 */
@DefaultUrl("/")
public class MainSearchPage extends PageObject {

    @FindBy(id = "search-query")
    WebElementFacade inputBox;

    @FindBy(css = ".btn.btn-orange.btn-append")
    WebElementFacade searchButton;

    @FindBy(css = ".catnav-primary>#catnav-menubar>.catnav-primary-item:nth-child(1)>a")
    WebElementFacade  clothingAndAccessory;

    @FindBy(css ="#catnav-dropdown>.catnav-dropdown-inner>.category-container:nth-child(1) .catnav-sidebar-list>li:nth-child(1)>a")
    WebElementFacade accessories;

    @FindBy(css = "#catnav-l3-3091-link")
    WebElementFacade beltsAndBraces;

    @FindBy(css = ".block-grid-xs-1>.block-grid-item:nth-child(2)>a")
    WebElementFacade jewelleryIcon;



    public MainSearchPage(WebDriver driver) {
        super(driver);
    }

    public void searchFromInputBox(String searchText) {
        inputBox.waitUntilPresent().sendKeys(searchText);
        searchButton.click();
    }

    public String getTopCategoriesHeader() {
        return find(By.cssSelector("h4.pb-xs-1-5")).getText();
    }

    public String getAllCategoriesHeader() {
        return find(By.cssSelector("h1.conform-heading.display-inline")).getText();
    }

    public void selectClothingAndAccessory(){
        clothingAndAccessory.click();
    }

    public void selectBeltAndBraces(){
        beltsAndBraces.click();

    }

    public String getTitleName(){
        return find(By.cssSelector("#content h1")).getText();
    }

    public void clickJewelleryIcon(){
        jewelleryIcon.waitUntilPresent().click();
    }
}
