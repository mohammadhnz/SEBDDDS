package calculator;

import calculator.Calculator;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

public class MyStepdefs {
    private Calculator calculator;
    private int value1;
    private int value2;
    private int result;
    private String operator;
    @Before
    public void before() {
        calculator = new Calculator();
    }

    @Given("^Two input values, (-?\\d+) and (-?\\d+)$")
    public void twoInputValues(int arg0, int arg1) {
        value1 = arg0;
        value2 = arg1;
    }


    @When("^operation$")
    public void performOperation() {
        if (operator.equals("*")) {
            result = calculator.multiply(value1, value2);
        } else  if (operator.equals("+")) {
            result = calculator.add(value1, value2);
        } else if (operator.equals("/")) {
            result = calculator.divide(value1, value2);
        } else if (operator.equals("^")) {
            result = calculator.power(value1, value2);
        }
        System.out.print(result);
    }

    @Then("^I expect the result (\\d+)$")
    public void iExpectTheResult(int arg0) {
        Assert.assertEquals(arg0, result);

    }

    @And("^Operator is \\*$")
    public void operatorIsMultiply() {
        operator = "*";
    }

    @And("^Operator is \\+$")
    public void operatorIsSum() {
        operator = "+";
    }

    @And("^Operator is /$")
    public void operatorIsDivide() {
        operator = "/";
    }

    @And("^Operator is \\^$")
    public void operatorIsPower() {
        operator = "^";
    }
}