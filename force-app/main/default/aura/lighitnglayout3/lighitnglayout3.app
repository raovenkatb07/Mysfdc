<aura:application extends="force:slds">
    <lightning:layout multipleRows="true">
        <lightning:layoutItem size="12" padding="arround-medium"  flexibility="auto">
            <lightning:card title="ACCOUNT">
                <aura:set attribute="title">
                    <lightning:avatar fallbackIconName="standard:person_account" alternativeText="ACCOUNT"></lightning:avatar>
                    <p  class="slds-p-horizontal_x-small"><b>Accouunt</b></p>
                </aura:set>
                <aura:set attribute="actions">
                    <lightning:button label="Save"></lightning:button>
                    <lightning:button label="cancel"></lightning:button>
                </aura:set>
                <div>
                    <table calss="slds-p-around_medium">
                        <tr>
                            <td class="slds-p-arround_medium">Name</td>
                            <td class="slds-p-arround_medium">Venkat</td>
                            <td class="slds-p-arround_medium">Industry</td>
                            <td>Banking</td>
                        </tr>
                    </table>
                </div>
            </lightning:card>
        </lightning:layoutItem>
    </lightning:layout>
    <lightning:layout>
        <lightning:layoutItem size="12" padding="around-medium" flexibility="auto">
            <lightning:layout>
                
                <lightning:layoutItem size="3" padding="arround-medium" flexibility="auto">
                    <lightning:card  title="BLOCK1">
                        <lightning:tile label="Name:venkat"></lightning:tile>
                        <lightning:tile label="Industry:Banking"></lightning:tile>
                    </lightning:card>
                </lightning:layoutItem>
                
                <lightning:layoutItem size="6"  padding="arround-medium" flexibility="auto" >
                    <lightning:card title="BLOCK2" >
                        <lightning:input label="lastName"></lightning:input>
                        <lightning:input label="firstName"></lightning:input> 
                        <lightning:input label="Eamli"></lightning:input>
                    </lightning:card>
                </lightning:layoutItem>
                
                <lightning:layoutItem size="3" padding="arroun-medium" flexibility="auto">
                    <lightning:card title="BLOCK3">
                        <p>Venkatarao line one</p>
                        <p>venkat Line 2</p>
                        <p>Ravan line 3</p>
                    </lightning:card>
                </lightning:layoutItem>
            </lightning:layout>
        </lightning:layoutItem>
    </lightning:layout>
</aura:application>