# CDP4-SDKDart-Community-Edition

The Concurrent Design Platform Dart Software Development Kit that is compliant with ECSS-E-TM-10-25 Annex A and Annex C. The CDP4-SDKDart-Community-Edition is a line by line port of the [C# CDP4-SDK-Community-Editio](https://github.com/RHEAGROUP/CDP4-SDK-Community-Edition). The CDP4-SDKDart tries to stay very close to the C# CDP4-SDK to make sure the API's are very similar, differences may occur due to languate specific features.

> The C# SDK is the primary implementation, therefore the Java implementation may be a bit behind on new features and bug fixes. Both libraries are actively maintained and the Java implementation will get sycned up within a few weeks.

# pub.dev

The SDK contains multiple libraries that are each packaged as Dart packages, they avaialble from [pub.dev](https://pub.dev/).

> More information coming soon

# Build and Coverage Status

> More information comming soon

## CDP4Common

The CDP4Common library is a Dart implementation of the CDP4 UML master model. The CDP4 UML master model is based on the ECSS-E-TM-10-25A Annex A UML master model and extends it with CDP4 concepts to improve the use of ECSS-E-TM-10-25A Annex A for Concurrent Design of complex systems. The library contains both PODO and DTO implementations of the classes defined in the CDP4 UML master model. The PODO classes are used when a full object graph is required. The DTO's are used when a full object graph is not required, references to other class are represented by unique identifiers in the form of a GUID.

The CDP4Common library also includes a set of so-called MetaInfo classes. These classes are used to provide information about the classes in the UML master model such as the properties, relationships to other classes etc. These classes provide similar functionality as the Dart reflection system, but with higher performance.

## CDP4JsonSerializer

The CDP4JsonSerializer library is an optimized CDP4Common specific JSON (de)serialization library that is used to serialize and deserialize the classes implemented in the CDP4Common class library.

## CDP4Dal

The CDP4Dal library is a library that provides the basis to implement ECSS-E-TM-10-25A Annex C. Annex C specifies both the JSON REST API and the exchange file format. The CDP4Dal library contains the Assembler that is used to create a fully dereferenced object graph, a message bus to send cdp4dal.events for consumptions in applications that implement the MVVM design pattern as well as the cdp4dal.Session class that manages a connection to a datasource.

## CDP4ServicesDal

The CDP4ServicesDal library is a Dart library that provides an implementation of ECSS-E-TM-10-25A Annex C.2, the JSON REST API, which includes concepts that are specific to the CDP4. These CDP4 specific items are pure extensions of ECSS-E-TM-10-25A. The CDP4ServicesDal library can only be used to communicate with a CDP4 Services instance, dedicated HTTP headers are used to verify that the REST API is indeed a CDP4 Services instance.

# License

The libraries contained in the CDP4-SDKDart Community Edition are provided to the community under the GNU Lesser General Public License. Because we make the software available with the LGPL, it can be used in both open source and proprietary software without being required to release the source code of your own components.

# Contributions

Contributions to the code-base are welcome. However, before we can accept your contributions we ask any contributor to sign the Contributor License Agreement (CLA) and send this digitaly signed to s.gerene@rheagroup.com. You can find the CLA's in the CLA folder.