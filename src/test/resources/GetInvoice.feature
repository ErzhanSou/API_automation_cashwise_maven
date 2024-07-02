# new feature
# Tags: optional

Feature: A description

  @getInvoice
  Scenario: A scenario
    Given base url "https://backend.cashwise.us/api/myaccount"
    And I have access
    And I have the endpoint "/invoices/447"
    And I have "page" with "1" as query param
    And I have "size" with "10" as query param
    When I send GET request
    Then I retrieve id for "invoice_id"
    Then verify status code is 200
    Then verify I have "invoice_title" with "Lagman Invoice" in response body
      And verify the invoice details in the responce match the database