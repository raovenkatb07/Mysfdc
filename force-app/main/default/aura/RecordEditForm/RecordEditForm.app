<aura:application>
<aura:attribute name="recid" type="id" default="0065g00000X0e5SAAR"></aura:attribute>
<lightning:recordEditForm objectApiName="Account" recordId="{!v.recid}">
    <lightning:inputField fieldName="Name"></lightning:inputField>
    <lightning:inputField fieldName="Phone"></lightning:inputField>
    <lightning:inputField fieldName="Industry"></lightning:inputField>
    <lightning:inputField fieldName="Rating"></lightning:inputField>
</lightning:recordEditForm>
</aura:application>