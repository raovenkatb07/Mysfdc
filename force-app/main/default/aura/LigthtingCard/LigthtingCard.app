<aura:application extends="force:slds">
    <lightning:card>
         <!--Aura set  Tittle-->
<aura:set attribute="title">
    <lightning:avatar fallbackIconName="standard:person_account" 
    alternativeText="search"></lightning:avatar>
    New Account
</aura:set>

<!--Auta set Action-->
<aura:set attribute="actions">
    <center>
        <lightning:button label="Save"></lightning:button>
        <lightning:button label="Cancel"></lightning:button>
        <lightning:button label="Reset"></lightning:button>
    </center>
</aura:set>
<!--Auta set footer-->
<aura:set attribute="footer">
    <center>Account Record is created with above details </center>
</aura:set>
    <div>
    <lightning:input label="Account Name"></lightning:input>
    <lightning:input label="Account Rating"></lightning:input>
    <lightning:input label="Account phone"></lightning:input>
    </div>
</lightning:card>
</aura:application>