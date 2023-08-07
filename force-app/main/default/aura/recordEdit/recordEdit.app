<aura:application extends="force:slds" >
    <aura:attribute name="rid" type="Id"  default="0015g0000126XwF"></aura:attribute>
    <lightning:recordEditform objectApiName="Account" recordId="{!v.rid}">
        <lightning:inputField fieldName="Name"></lightning:inputField>
        <lightning:inputField fieldName="Industry"></lightning:inputField>
        <lightning:inputField fieldName="Phone"></lightning:inputField>
        <lightning:inputField fieldName="Type"></lightning:inputField>
        <lightning:inputField fieldName="Rating"></lightning:inputField>
    </lightning:recordEditform>
</aura:application>