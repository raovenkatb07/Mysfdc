trigger HTML_Future_HTML on Account (after insert) {
    map<id,Account> acc=trigger.newmap;
    set<id> keys=acc.keySet();
    HTMl_EXample_Future.invoke(keys);

}