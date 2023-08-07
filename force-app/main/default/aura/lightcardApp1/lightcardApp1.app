<aura:application extends="force:slds" >
	<lightning:card>
    <aura:set attribute="title">
        <lightning:avatar fallbackIconName="standard:person_account" alternativeText="Scarch"></lightning:avatar>
        Account
        </aura:set>
        <aura:set attribute="actions">
		<lightning:button  label="Save"></lightning:button>
        <lightning:button label="cancel"></lightning:button>
        </aura:set>
        <aura:set attribute="footer">
            <center> Account record is created with above details </center>
       
        </aura:set>
        <div>
		<lightning:input label="AccountName" ></lightning:input>
            <lightning:input label="AccoutPhone"></lightning:input>
            <lightning:input label="Accountindustry"></lightning:input>
        </div>
    </lightning:card>
</aura:application>