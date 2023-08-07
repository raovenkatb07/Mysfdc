<aura:application extends="force:slds" >
    <lightning:layout>
        <lightning:layoutItem flexibility="auto" padding="around-medium" >
            <div>
                <lightning:card title="Account" footer="Testing" >
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="Account"></lightning:avatar>
                    <p class="slds-p-arround_x-small">ACCOUNT</p>
                </lightning:card></div>
        </lightning:layoutItem>
        <lightning:layoutItem flexibility="auto" padding="around-medium" >
            <div>
                <lightning:card title="Account" footer="Testing" >
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="Contact" ></lightning:avatar>
                    <p class="slds-p-arround_x-small">CONTACT</p>
                </lightning:card></div>
        </lightning:layoutItem>
        <lightning:layoutItem flexibility="auto" padding="horizontal-medium" >
            <div>
                <lightning:card title="Account" footer="Testing" >
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="Opportunity"></lightning:avatar>
                    <p class="slds-p-arround_x-small">Opportuity</p>
                </lightning:card></div>
        </lightning:layoutItem>
        <lightning:layoutItem flexibility="auto" padding="horizontal-medium" >
            <div>
                <lightning:card title="Account" footer="Testing" >
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="LEAD"></lightning:avatar>
                    <p class="slds-p-arround_x-small">Lead</p>
                </lightning:card></div>
        </lightning:layoutItem>
    </lightning:layout>
    <br/>
    <center><b><u>
        MultipleRows
        </u></b></center>
    <lightning:layout multipleRows="true">
        <lightning:layoutItem flexibility="auto" padding="horizontal-medium" size="12" >
            <div>
                <lightning:card title="Account" footer="Testing" >
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="Account"></lightning:avatar>
                    <p class="slds-p-arround_x-small">ACCOUNT</p>
                </lightning:card></div>
        </lightning:layoutItem>
        <lightning:layoutItem flexibility="auto" padding="horizontal-medium" size="6">
            <div>
                <lightning:card title="Account" footer="Testing" >
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="Contact" ></lightning:avatar>
                    <p class="slds-p-arround_x-small">CONTACT</p>
                </lightning:card></div>
        </lightning:layoutItem>
        <lightning:layoutItem flexibility="auto" padding="horizontal-medium" size="6">
            <div>
                <lightning:card title="Account" footer="Testing" >
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="Opportunity"></lightning:avatar>
                    <p class="slds-p-arround_x-small">Opportuity</p>
                </lightning:card></div>
        </lightning:layoutItem>
        <lightning:layoutItem flexibility="auto" padding="around-medium" size="12" >
            <div>
                <lightning:card title="Account" footer="Testing" >
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="LEAD"></lightning:avatar>
                    <p class="slds-p-arround_x-small">Lead</p>
                </lightning:card></div>
        </lightning:layoutItem>
    </lightning:layout>
    
</aura:application>