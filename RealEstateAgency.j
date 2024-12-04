
package realestate;




public class RealEstateAgency {
    private Property[] properties;
    private int count;

 
    public RealEstateAgency() {
        properties = new Property[100]; 
        count = 0;
    }


    public void addProperty(Property property) {
        if (count < properties.length) {
            properties[count++] = property;
            System.out.println("Property added successfully.");
        } else {
            System.out.println("Cannot add more properties. Capacity reached.");
        }
    }


    public void removeProperty(int index) {
        if (index >= 0 && index < count) {
            for (int i = index; i < count - 1; i++) {
                properties[i] = properties[i + 1];
            }
            properties[--count] = null;
            System.out.println("Property removed successfully.");
        } else {
            System.out.println("Invalid index.");
        }
    }

 
    public void displayProperties() {
        for (int i = 0; i < count; i++) {
            properties[i].displayInfo();
            System.out.println("----------------------");
        }
    }
}

