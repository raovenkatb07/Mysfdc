trigger tri8 on Account (before update) {
    Acctrihand.beforeupdate(trigger.oldmap, trigger.newmap);
}