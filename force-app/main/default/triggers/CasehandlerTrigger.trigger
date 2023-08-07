trigger CasehandlerTrigger on Case (after insert) {
    CaseHandler.populateLatestCaseNumbers(trigger.new);

}