<aura:application extends="force:slds">
	<lightning:card title="Account">
    <div>
        the body of the card
        </div>
    </lightning:card>
    <lightning:card>
    <aura:set attribute="title">
        <lightning:avatar fallbackIconName="standard:person_account" alternativeText="Example" ></lightning:avatar>
       ACCOUNT
        </aura:set>
    </lightning:card>
    <lightning:card title="LIGHTINING CARD" variant="Narrow" footer="copy@venkat" >
    <aura:set attribute="actions">
        <lightning:buttonGroup>
        <lightning:button label="Submit"></lightning:button>
            <lightning:button label="cancel"></lightning:button>
            <lightning:button label="Reset"></lightning:button>
        </lightning:buttonGroup>
        </aura:set>
        the line one <br/>
        the line two <br/>
        the line three <br/>
        the line four <br/> 
    </lightning:card>
</aura:application>