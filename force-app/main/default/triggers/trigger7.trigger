//count the contct related account records
trigger trigger7 on Contact (after insert) {
    Roolupsummery.increments(trigger.new);

}