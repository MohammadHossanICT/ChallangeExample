
#  Directory App 

DirectoryAPP Project implemented with Clean Layered Architecture with MVVMC in presentation layer .


## Components

* **Presentation Layer (MVVMC)** = ViewModels + Views + Coordinators 

* **UI Layer** = Contains UITableview , Collectionview , used Diffiable data source methods to udpate snap of data , All Ui is created programatically. 

* **View Model** = ViewModel for Presentation logic, data binding is done usign protocol delegate pattern.  

* **Model** = Models are created using Struct. 

* **Localization** = Localizable string file is created to support multiple langauges , currently its supporting english only.

* **AppCoordinator** = This is single point for app navigation and inserting all dependencies. 

* **Domain Layer** = Entities + Use Cases + Repositories Interfaces

* **Data Repositories Layer** = Repositories Implementations + API (Network) + Persistence DB

* **Networking** = Servcie layer is created using URLSession with async await

### Design Patterns

* Initiizer dependecy and property injection patterns is used to insert objects
* Protocols are used for dependency inversion. 
* Protocol delegate pattern
* Async Await pattern. 
* Diffiable data source pattern 

## Testing.

* Unit Tests for Use Cases(Domain Layer), ViewModels(Presentation Layer), NetworkService(Repositry and Network Layer)
* UITest cases included from HomeScreen. 


