-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2017 at 07:16 PM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tbx_master_dcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `identifier` varchar(256) NOT NULL,
  `PID` varchar(256) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `classification_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `identifier`, `PID`, `description`, `classification_id`) VALUES
(1, 'abbreviatedFormFor', 'http://www.datcatinfo.net/datcat/DC-64', 'A link used to identify a relation between a term that is an abbreviated form, and its full or expanded form. It may be coupled with a target attribute to point to the entry of the full or expanded form. For example, the term WWW could have the following tag to point to its full form: World Wide Web. The actual content of the element would be the text World Wide Web, which allows the user to see what term is the full form of the current term without having to go to the location of the full form in the file (the location would normally be somewhere within the current entry, since the abbreviated form and the full form represent the same concept).  The identification of a relation between an abbreviated term and its full form indicates which term in a terminological entry is the full form of the abbreviated term. In many languages, English abbreviations are commonly used, but the English full form may be avoided in favor of an equivalent full form in the language in question. In this case, the English abbreviation and the target language full form will both appear in the target language section of the entry.', 6),
(2, 'administrativeStatus', 'http://www.datcatinfo.net/datcat/DC-70', 'The status of a term within a certain working environment. The data-category administrativeStatus should be linked, through a target attribute, to a in the back matter that identifies the administrative organization that determined the status.\r\n\r\nNOTE The status of terms with respect to a standardization process is covered by normativeAuthorization. ', 6),
(3, 'animacy', 'http://www.datcatinfo.net/datcat/DC-78', 'The characteristic of a word indicating that in a given discourse community, its referent is considered to be alive or to possess a quality of volition or consciousness. The value of the element when it has a type attribute value of animacy shall be one of: animate, inanimate, otherAnimacy.', 6),
(4, 'annotatedNote', 'http://www.datcatinfo.net/datcat/DC-4009', 'A note that can be coupled with an element to indicate the source of the note or other administrative information about the note. If no source or additional information about the note is required, use the element.', 1),
(5, 'antonymConcept', 'http://www.datcatinfo.net/datcat/DC-82', 'A concept that is opposite in meaning to the concept represented by the entry containing the element. A element that has a type attribute value of ''antonymConcept'' can also have a target attribute pointing to the entry ID of the that contains the antonym concept.', 3),
(6, 'antonymTerm', 'http://www.datcatinfo.net/datcat/DC-83', 'A term that designates a concept that is opposite in meaning to the concept represented by the entry containing the element. A element that has a type attribute value of ''antonymTerm'' can also have a target attribute pointing to the term ID of the term that represents the antonym concept.', 3),
(7, 'applicationSubset', 'http://www.datcatinfo.net/datcat/DC-84', 'An identifier that indicates that the parent element to which it applies is associated with a specific application.', 1),
(8, 'associatedConcept', NULL, 'A concept that exhibits a relation to the subject concept that can be established on the basis of non-hierarchical thematic connections. A element that has a type attribute value of ''associatedConcept'' can also have a target attribute pointing to the entry ID of the that contains the associated concept. For example, teacher and school represent associated concepts.', 3),
(9, 'audio', 'http://www.datcatinfo.net/datcat/DC-90', 'A name or other identifier of an audio file: sound, spoken words, music, or other audible representations used to\r\nillustrate or explain terms or concepts. A <descrip> element that has a type attribute value of ''audio'' can also have a\r\ntarget attribute pointing to the ID of a <refObject> in the back matter of the TBX document instance that describes\r\nand points to the audio file.\r\n\r\nNOTE If a direct pointer to the audio file is\r\npreferred within the <termEntry>, rather than pointing to the back matter, use an <xref> instead.', 3),
(10, 'broaderConceptGeneric', 'http://www.datcatinfo.net/datcat/DC-94', 'A concept two or more levels of abstraction higher than subject concept in a generic hierarchical concept system. A element that has a type attribute value of ''broaderConceptGeneric'' can also have a target attribute pointing to the entry ID of the that contains the broader concept. Generic relations between concepts are "is-a" relations. This means that the narrower concept "is an" instance of its broader generic concept. For example, a dog is a canine animal, and a canine animal is a mammal. Therefore, mammal is a broader generic concept for dog.', 3),
(11, 'broaderConceptPartitive', 'http://www.datcatinfo.net/datcat/DC-95', 'A concept two or more levels of abstraction higher than subject concept in a part-whole or meronymic hierarchical concept system. A element that has a type attribute value of ''broaderConceptPartitive'' can also have a target attribute pointing to the entry ID of the that contains the broader concept. For example, a floor board is part of a house (broader partitive concept), but it can be more narrowly defined as being part of the floor (superordinate partitive concept), which in turn is part of the house. Partitive relations between concepts are "has-a" relations. This means that the broader partitive concept "has" its narrower concepts as parts of itself.', 3),
(12, 'businessUnitSubset', NULL, 'An identifier that indicates that the parent element to which it applies is associated with a specific department, division, or other unit of an enterprise.', 1),
(13, 'characteristic', 'http://www.datcatinfo.net/datcat/DC-125', 'An abstraction of a property of an object or of a set of objects. For example, flammability is a characteristic of fuel. Essential characteristics can be used to define concepts.', 3),
(14, 'classificationCode', 'http://www.datcatinfo.net/datcat/DC-128', 'A set of symbols, with rules for their application, used to represent classes and their interrelations. A <descrip> element that has a type attribute value of ''classificationCode'' can also have a target attribute pointing to the ID of a\r\nbibliographic <refobject> in the back matter describing the classification code. \r\n\r\n NOTE If a direct pointer to the classification code is preferred within the <termEntry>, rather than pointing\r\nto the back matter, use an <xref> instead.', 3),
(15, 'conceptOrigin', 'http://www.datcatinfo.net/datcat/DC-140', 'The institution, region, community, culture, country, or other venue from which a concept covered by a terminological entry originates. Because this data-category provides information about the origin of the concept, it should occur at the level.', 1),
(16, 'conceptPosition', 'http://www.datcatinfo.net/datcat/DC-141', 'The position of a concept in a concept system. A element that has a type attribute value of ''conceptPosition'' can also have a target attribute pointing to the ID of a position in the concept system.', 3),
(17, 'context', 'http://www.datcatinfo.net/datcat/DC-149', 'A text which illustrates a concept or a term, by containing the concept designation itself. Contexts must be authentic, that is, they must be obtained from an existing source, and not created by the terminologist. Contexts are documented very frequently in terminology collections. Contexts can provide information for determining term usage and collocations. In TBX, the context as a term-related data-category. A context can be further categorized according to context type.', 3),
(18, 'contextType', 'http://www.datcatinfo.net/datcat/DC-150', 'The characterization of a context according to a set of theoretical or pragmatic types.', 4),
(19, 'coordinateConceptGeneric', 'http://www.datcatinfo.net/datcat/DC-159', 'A concept having the same nearest superordinate concept as the concept being described by this element in a generic concept system. A element that has a type attribute value of ''coordinateConceptGeneric'' can also have a target attribute pointing to the ID of the coordinate concept.', 3),
(20, 'coordinateConceptPartitive', 'http://www.datcatinfo.net/datcat/DC-160', 'A concept having the same nearest superordinate concept as the concept being described by this element in a partitive concept system. A element that has a type attribute value of ''coordinateConceptPartitive'' can also have a target attribute pointing to the ID of the coordinate concept.', 3),
(21, 'corpusTrace', NULL, 'A notation indicating the location of an external contextual resource.', 9),
(22, 'crossReference', 'http://www.datcatinfo.net/datcat/DC-164', 'A pointer to another related location, such as another entry or another term. The element with a type attribute value of ''crossReference'' shall also have a target attribute to point to the identifier of the entry or term.', 5),
(23, 'customerSubset', 'http://www.datcatinfo.net/datcat/DC-165', 'An identifier that indicates that the parent element to which it applies is associated with a specific customer.', 1),
(24, 'databaseType', NULL, 'An identifier that indicates the type of database from which the parent element originated. This element should normally occur at the level because typically entire entries originate from or are imported from another database.', 1),
(25, 'definition', 'http://www.datcatinfo.net/datcat/DC-168', 'A representation of a concept by a descriptive statement which serves to differentiate that concept from related concepts.', 3),
(26, 'definitionType', 'http://www.datcatinfo.net/datcat/DC-169', 'The characterization of a definition according to a set of theoretical or pragmatic types.', 4),
(27, 'directionality', 'http://www.datcatinfo.net/datcat/DC-192', 'A data-category that, through the value of its target attribute, indicates the preferred translation of the term in the element of the current from among the available translations in the entry. The target attribute should point to the identifier of the corresponding to the target term. In the case of the values monodirectional and bidirectional, the target term is the preferred term. The content of the element when it has a type attribute value of ''directionality'' indicates the scope of directionality, and shall be one of the following: • monodirectional: The translation is only preferred going from the source language (current to the target language (target ). • bidirectional: The translation is preferred in both directions, i.e. the term in the target is a preferred translation of the term in the current and vice-versa. • incommensurate: The relation between the term in the current and the term in the target as translations is imperfect and should be used with care. In this case, the concepts are not equal. A should be used to provide information about the difference between the concepts. • undetermined: The scope of directionality has not been determined.', 6),
(28, 'domainExpert', 'http://www.datcatinfo.net/datcat/DC-196', 'Subject field specialist who provides information for a terminological entry, such as a definition or target language equivalent. An element that has a type attribute value of ''domainExpert'' can also have a target attribute pointing to the identifier of a reference entry in the back matter of the TBX document instance that provides information about the domain expert.', 1),
(29, 'elementWorkingStatus', 'http://www.datcatinfo.net/datcat/DC-197', 'A value indicating the level of completeness and accuracy of an element (field, record, entry) within a terminological collection.', 1),
(30, 'entrySource', 'http://www.datcatinfo.net/datcat/DC-207', 'A database or file from which the entry was imported.', 1),
(31, 'environmentSubset', 'http://www.datcatinfo.net/datcat/DC-218', 'An identifier that indicates a specific computer environment that the parent element is associated with.', 1),
(32, 'etymology', 'http://www.datcatinfo.net/datcat/DC-5663', 'Information on the origin of a word and the development of its meaning.', 6),
(33, 'example', NULL, 'A text which illustrates a concept or a term, by providing an example of the object designated by the concept or term, and not necessarily containing the concept designation itself. Some databases use example as a label for contextual references. The content of those data-categories should be converted to the data-category context for interchange purposes.', 3),
(34, 'explanation', 'http://www.datcatinfo.net/datcat/DC-223', 'A statement that describes and clarifies a concept and makes it understandable, but does not necessarily differentiate it from other concepts.', 3),
(35, 'externalCrossReference', 'http://www.datcatinfo.net/datcat/DC-226', 'A term or other terminological resource that is external to the terminological database or TBX document instance.', 9),
(36, 'falseFriend', 'http://www.datcatinfo.net/datcat/DC-227', 'A term in another language that appears to be semantically or morphologically similar to the subject term in the entry, but that does not represent the same concept. For example, in French, the term réaliser means "to accomplish", and therefore, it is a false friend of the English term realize (i.e. to become conscious of). A element with the type attribute value of ''falseFriend'' can also have a target attribute whose value is a pointer to a term in another entry.', 6),
(37, 'figure', 'http://www.datcatinfo.net/datcat/DC-2920', 'A name or other description of a diagram, picture, or other graphic material used to illustrate a concept or group of concepts. A element that has a type attribute value of ''figure'' can also have a target attribute pointing to the ID of a in the back matter of the TBX document instance that describes and points to the file that contains the figure.\r\n\r\nNOTE If a direct pointer to the file that contains the figure is preferred within the <termEntry>, rather than pointing to\r\nthe back matter, use an <xref> instead.', 3),
(38, 'frequency', ' http://www.datcatinfo.net/datcat/DC-233', 'The relative commonness with which a term occurs. The content of the element when it has a type attribute value of ''frequency'' shall be one of: commonlyUsed, infrequentlyUsed, rarelyUsed. The assessment of frequency of a term can be based on subjective criteria, or it can reflect computer analysis of text corpora.', 6),
(39, 'geographicalUsage', 'http://www.datcatinfo.net/datcat/DC-243', 'A code identifying any specific geographical area where the term is used, for instance, to differentiate between UK English and US English. Preferred values are language codes combined with geographical codes, from IETF RFC 4646 or its successor, as identified in IETF BCP 47. For example: en-US for American English.', 6),
(40, 'grammaticalGender', 'http://www.datcatinfo.net/datcat/DC-245', 'The gender of the word.', 6),
(41, 'grammaticalNumber', 'http://www.datcatinfo.net/datcat/DC-251', 'A property of a term that indicates the number of objects referred to by the term. For example, the terms rice and bread are mass nouns because there are no separate singular and plural forms.\r\n\r\nNOTE If the singular and the plural forms of a term do not designate the same concept, they should be\r\nrecorded in separate entries.', 6),
(42, 'grammaticalValency', 'http://www.datcatinfo.net/datcat/DC-257', 'The range of syntactic elements either required or permitted by a lexical unit. The valency of eat includes a subject ("I" in "I am eating") and an object ("cheese" in "I am eating cheese".) It can thus be said to be "bivalent".', 6),
(43, 'homograph', NULL, 'A word that is spelled like the subject term in the entry, but that has a different meaning, and origin. Homographs are terms that have the same written form, but are derived from different etymological origins, for example, a port for boats and a port for computer peripherals. A element having a type attribute value of ''homograph'' can also have a target attribute to point to the of the entry that describes the homograph.', 6),
(44, 'indexHeading', NULL, 'A term chosen to be used in an index to represent an item or a concept in a document.', 1),
(45, 'keyword', 'http://www.datcatinfo.net/datcat/DC-6013', 'A word or group of words, possibly in lexicographically standardized (lemmatized) form, taken out of the text of a document, which characterizes the text and enables its retrieval. For example, the terms data-category and terminological entry are keywords for this international standard. In a terminological database that contains the terminology of ISO 30042, they could be identified as keywords by using this element.', 1),
(46, 'language-planningQualifier', 'http://www.datcatinfo.net/datcat/DC-280', 'A qualifier assigned to a provisional term within a language planning or descriptive terminology environment.', 6),
(47, 'lionHotkey', NULL, '(Localization hot key) The letter in a word that acts as a hotkey in a computer application. A hotkey is a key or a combination of keys on a computer keyboard that, when pressed at one time, performs a task (such as starting an application) as an alternative to using a mouse or other input device. Hotkeys are supported by many operating systems and applications. The hotkey is indicated by an ampersand in the term in software interface files, and by an underscore in the actual visual display.', 6),
(48, 'normativeAuthorization', 'http://www.datcatinfo.net/datcat/DC-374', 'A term status qualifier assigned by an authoritative body, such as a standards body or a governmental entity with a regulatory function.\r\n\r\nThe name of the authoritative body should be documented in the terminology repository, and referenced in the TBX\r\ndocument instance by using a <refObject>. ', 6),
(49, 'noteSource', NULL, 'The source of a note that is expressed in a element having the type attribute value ''annotatedNote''.', 2),
(50, 'originatingDatabase', NULL, 'The database from which the parent element originated.', 1),
(51, 'originatingInstitution', 'http://www.datcatinfo.net/datcat/DC-391', 'An institution (i.e., company, government agency, etc.) that provided the information in the parent element.', 1),
(52, 'originatingPerson', 'http://www.datcatinfo.net/datcat/DC-392', 'An individual who provided the information in the parent element.', 1),
(53, 'otherBinaryData', 'http://www.datcatinfo.net/datcat/DC-395', 'Any binary data not covered by the categories figure, audio, video, and table. A element that has a type attribute value of ''otherBinaryData'' can also have a target attribute pointing to the ID of a in the back matter of the TBX document instance that describes and points to the binary file.\r\n\r\nNOTE If a direct pointer to the binary file is preferred within the <termEntry>, rather than pointing to the\r\nback matter, use an <xref> instead.', 3),
(54, 'partOfSpeech', 'http://www.datcatinfo.net/datcat/DC-396', 'A category assigned to a word based on its grammatical and semantic properties. For example: noun, verb, or adjective. The element content shall be expressed in plainText, and preferably be limited to a set of picklist values. Only one value shall be permitted for each in a given entry.', 6),
(55, 'processStatus', 'http://www.datcatinfo.net/datcat/DC-401', 'The status of a term with respect to its advancement within the terminology management process. The content of the element when it has a type attribute value of ''processStatus'' shall be one of: unprocessed, provisionallyProcessed, or finalized.', 6),
(56, 'productSubset', 'http://www.datcatinfo.net/datcat/DC-405', 'An identifier assigned to a term, record, or entry to indicate that it is related to or used in a product.', 1),
(57, 'projectSubset', 'http://www.datcatinfo.net/datcat/DC-406', 'An identifier assigned to a term, record, or entry to indicate that it is related to or used in a project.', 1),
(58, 'pronunciation', NULL, 'The representation of the manner by which a term is spoken. In TBX, pronunciation shall be represented in the International Phonetic Alphabet. A given term can have more than one pronunciation depending on the geographical area in which the term is used. In this case use a separate or element for each pronunciation, and indicate the geographical area for each by using a element with a type attribute value of ''geographicalUsage''.', 6),
(59, 'proprietaryRestriction', 'http://www.datcatinfo.net/datcat/DC-413', 'A restriction placed on a term for the purpose of protecting the right of an organization to the exclusive use of the term.\r\n\r\nNOTE The content value "copyright" is not included because\r\ncopyright only applies to larger text units, such as books, not to terms.', 6),
(60, 'quantity', NULL, 'A measurable quantity associated with a concept.', 3),
(61, 'range', NULL, 'The pair of limits within which a quantity is measured, as expressed by stating the lower and upper permissible values. ', 3),
(62, 'register', 'http://www.datcatinfo.net/datcat/DC-423', 'Classification indicating the level of language assigned to a term.', 6),
(63, 'relatedConcept', 'http://www.datcatinfo.net/datcat/DC-435', 'A concept that has an associative relation to another concept, such as teacher and school. A element that has a type attribute value of ''relatedConcept'' can also have a target attribute pointing to the entry identifier of the related concept.', 3),
(64, 'relatedConceptBroader', 'http://www.datcatinfo.net/datcat/DC-436', 'A concept that is broader at some level with respect to a related or associated concept, but without comprising any reference to a generic or partitive system. A element that has a type attribute value of ''relatedConceptBroader'' can also have a target attribute pointing to the entry identifier of the related concept.', 3),
(65, 'relatedConceptNarrower', 'http://www.datcatinfo.net/datcat/DC-437', 'A concept that is narrower at some level with respect to a related or associated concept, but without comprising any reference to a generic or partitive system. A element that has a type attribute value of ''relatedConceptNarrower'' can also have a target attribute pointing to the entry identifier of the related concept.', 3),
(66, 'reliabilityCode', 'http://www.datcatinfo.net/datcat/DC-439', 'A code assigned to a data-category or record indicating accuracy and/or completeness. The content of the element when it has a type attribute value of ''reliabilityCode'' shall be a value from 1 (least reliable) to 10 (most reliable).', 3),
(67, 'responsibility', 'http://www.datcatinfo.net/datcat/DC-451', 'The name of a person or entity associated with a terminology management transaction. The element with a type attribute value of ''responsibility'' can also have a target attribute to point to the identifier of a bibliographic entry in a that contains information about the person or entity.', 8),
(68, 'sampleSentence', 'http://www.datcatinfo.net/datcat/DC-455', 'A sentence composed (frequently by a terminologist or language planner) to illustrate the use of a term in cases where an authentic context is unavailable. Although contextual information should ideally be taken from actual texts written in the language in question, such contextual references may not exist for newly coined or suggested terms.', 3),
(69, 'searchTerm', 'http://www.datcatinfo.net/datcat/DC-457', 'A term entered in a term entry for purposes of retrieval.', 1),
(70, 'securitySubset', 'http://www.datcatinfo.net/datcat/DC-458', 'A classification of a term, record, or entry indicating that its distribution is restricted for security reasons. Sometimes, terms are not released to the public until the material that uses the term (product, service, etc.) is released to the public. Until that time, this element serves to protect the data from distribution.', 1),
(71, 'see', NULL, 'An element that points to a location where additional information can be found. The element with a type attribute value of ''see'' shall also have a target attribute to point to the location of the information.', 5),
(72, 'sequentiallyRelatedConcept', 'http://www.datcatinfo.net/datcat/DC-467', 'A concept that has a relation to the subject concept based on spatial or temporal proximity. Temporal relations and spatial relations can be sequential. A element that has a type attribute value of ''sequentiallyRelatedConcept'' can also have a target attribute pointing to the entry identifier of the related concept.', 3),
(73, 'shortFormFor', 'http://www.datcatinfo.net/datcat/DC-468', 'A linking element used to identify a relation between the subject term when it is a short form, and its full or expanded form. It may be coupled with a target attribute to point to the full or expanded form. Normally both the short form and the full form will be contained in the same entry, but each in its own , because they represent the same concept. For example, the term United States could have the following markup to point to the full form term United States of America:', 6),
(74, 'sortKey', NULL, 'A character string used for sorting and merging operations. A sort key can enable alphabetic or systematic access.', 1),
(75, 'source', 'http://www.datcatinfo.net/datcat/DC-471', 'A complete citation of the source of the information in the parent element.', 1),
(76, 'sourceIdentifier', 'http://www.datcatinfo.net/datcat/DC-472', 'A pointer to a bibliographic entry that contains information about the source of the parent element. An element that has a type attribute value of ''sourceIdentifier'' also has a target attribute containing the identifier of the bibliographic entry. The content of the element is a display value for the source.', 1),
(77, 'sourceType', 'http://www.datcatinfo.net/datcat/DC-474', 'A property describing the source text, i.e. whether it is actual parallel text (text that is equivalent to text in another\r\nlanguage) or background material. ', 2),
(78, 'spatiallyRelatedConcept', 'http://www.datcatinfo.net/datcat/DC-477', 'A concept that has a relation of dependence with the subject concept, referring to objects based on their relative physical positions. A element that has a type attribute value of ''spatiallyRelatedConcept'' can also have a target attribute pointing to the entry identifier of the related concept.', 3),
(79, 'subjectField', 'http://www.datcatinfo.net/datcat/DC-489', 'A field of special knowledge. Subject fields can be expressed in multiple levels, for example: Subject field (level 1): disease, Subject field (level 2): cancer, Subject field (level 3): non-Hodgkin''s lymphoma. Subject fields shall be expressed in plainText, and preferably be selected from a defined set of picklist values. Subject fields shall be specified at the concept (termEntry) level.', 3),
(80, 'subordinateConceptGeneric', 'http://www.datcatinfo.net/datcat/DC-491', 'A concept that has a generic relation with the subject concept, and a broader intension. A element that has a type attribute value of ''subordinateConceptGeneric'' can also have a target attribute pointing to the entry identifier of the subordinate concept.', 3),
(81, 'subordinateConceptPartitive', 'http://www.datcatinfo.net/datcat/DC-492', 'A concept that has a partitive relation with the subject concept, and represents one of the parts of the subject concept. A element that has a type attribute value of ''subordinateConceptPartitive'' can also have a target attribute pointing to the entry identifier of the subordinate concept.', 3),
(82, 'subsetOwner', 'http://www.datcatinfo.net/datcat/DC-494', 'The owner of the subset of terminological entries to which this entry belongs.', 1),
(83, 'superordinateConceptGeneric', 'http://www.datcatinfo.net/datcat/DC-496', 'A concept that has a generic relation with the subject concept, and a narrower intension. A element that has a type attribute value of ''superordinateConceptGeneric'' can also have a target attribute pointing to the entry identifier of the superordinate concept.', 3),
(84, 'superordinateConceptPartitive', 'http://www.datcatinfo.net/datcat/DC-2915', 'A concept that has a partitive relation with the subject concept, and represents the sum of the parts; a comprehensive concept. A element that has a type attribute value of ''superordinateConceptPartitive'' can also have a target attribute pointing to the entry identifier of the superordinate concept.', 3),
(85, 'table', NULL, 'The name of a table that is used to describe a concept. The table itself can be contained (or referred to as an external file) in a in the back matter of a TBX document instance. The target attribute points to the identifier. The element content shall be in plainText. NOTE If a direct pointer to the file that contains the table is preferred within the , rather than pointing to the back matter, use an instead.', 3),
(86, 'temporallyRelatedConcept', 'http://www.datcatinfo.net/datcat/DC-2916', 'A concept related to the subject concept through a sequential relation involving events in time. A element that has a type attribute value of ''temporallyRelatedConcept'' can also have a target attribute pointing to the entry identifier of the related concept.', 3),
(87, 'temporalQualifier', 'http://www.datcatinfo.net/datcat/DC-503', 'A property of a term with respect to its use over time.', 6),
(88, 'termLocation', 'http://www.datcatinfo.net/datcat/DC-1823', 'A location in a document, computer file, or other information medium, where the term frequently occurs, such as a user interface object (in software), a packaging element, a component in an industrial process, and so forth.', 6),
(89, 'termProvenance', 'http://www.datcatinfo.net/datcat/DC-509', 'Classification of a term according to the methodology employed in creating the term.', 6),
(90, 'termStructure', 'http://www.datcatinfo.net/datcat/DC-6258', 'The structure of the components of a term, indicated using square brackets. For example, e.g. : [bank statement] [total] versus [bank] [statement total].', 6),
(91, 'termType', 'http://www.datcatinfo.net/datcat/DC-2677', 'A categorization of a term with respect to formal representations of terms or where or how they are used, for example, acronym.\r\n\r\nRefer to ISO 12620 for definitions of the above term types. The value shortcut refers to a string that acts as a\r\nkeyboard shortcut on computers, for example, Ctrl + V is a term that represents a keyboard shortcut for the concept\r\nof paste.', 6),
(92, 'thesaurusDescriptor', NULL, 'The term in a thesaurus that can be used to represent a concept in a terminological entry. A element that has a type attribute value of ''thesaurusDescriptor'' can also have a target attribute pointing to the ID of the in the back matter of the TBX document instance that describes the thesaurus. The element content shall be in plainText. NOTE If a direct pointer to the thesaurus is preferred within the , rather than pointing to the back matter, use an instead.', 3),
(93, 'timeRestriction', 'http://www.datcatinfo.net/datcat/DC-516', 'The indication of a period of time during or since which a term was or has been subject to specified usage. For example, several European countries have redefined the requirements for certain university degrees in recent years. If, for instance, the requirements for a baccalaureate degree changed from three to four years in 1993, then any terminology entry defining the term used to designate this degree would have to specify the time restriction affecting the definition, which would be different before 1993 and after 1993.', 6),
(94, 'transactionType', 'http://www.datcatinfo.net/datcat/DC-1689', 'A record that indicates the stage of the entry within the overall process of creation, approval, and use of a terminology entry.', 7),
(95, 'transferComment', 'http://www.datcatinfo.net/datcat/DC-520', 'Note included in a term entry providing information on the degree of equivalence, directionality or other special features affecting equivalence between a term in one language and another term in a second language. This element can be used in conjunction with the element to indicate the preferred translation of the term in question. The element with a type attribute value of ''transferComment'' can also have a target attribute to point to the term that is the object of the transfer comment.', 6),
(96, 'unit', 'http://www.datcatinfo.net/datcat/DC-5383', 'A precisely-specified quantity in terms of which the magnitudes of other quantities can be stated, such as meter or volt.', 3),
(97, 'usageCount', 'http://www.datcatinfo.net/datcat/DC-525', 'The number of times an entry has been accessed.', 8),
(98, 'usageNote', 'http://www.datcatinfo.net/datcat/DC-526', 'A note containing information on the usage of the term.', 6),
(99, 'video', 'http://www.datcatinfo.net/datcat/DC-533', 'A name or other description of recorded visual images used to represent or illustrate terminological information. A\r\n<descrip> element that has a type attribute value of ''video'' can also have a target attribute pointing to the ID of a\r\n<refObject> in the back matter of the TBX document instance that describes and points to the video file. \r\n\r\n NOTE If a direct pointer to the video file is preferred within the <termEntry>, rather than\r\npointing to the back matter, use an <xref> instead.', 3),
(100, 'xAudio', NULL, 'External audio file.', 9),
(101, 'xGraphic', ' http://www.datcatinfo.net/datcat/DC-2920', 'External graphic file.', 9),
(102, 'xMathML', NULL, 'A mathematical concept expressed in MathML.', 9),
(103, 'xSource', NULL, 'An external source of information such as the source of a definition or context sentence.', 9),
(104, 'xVideo', NULL, 'External video file.', 9),
(105, 'relatedTerm', 'http://www.datcatinfo.net/datcat/DC-438', ' A term connected to another term by a coordinate or associative relation.', 5),
(106, 'date', 'http://www.datcatinfo.net/datcat/DC-4335', 'The point of time at which a transaction or event. \r\n\r\nThe layout YYYY-MM-DD according to ISO 8601, with the possibility of expansion to date and time, e.g., YYYY-MM-DD hh:mm:ss, should be used to represent dates. If a database does not use this format, conversion of date-related data can be required before interchanging data. The “date” category can be associated with virtually any element in any kind of record. It can be used as an administrative notation to indicate times when records are entered, edited or approved, or it can be part of the actual knowledge content in the record itself, such as in a bibliographic record.\r\n\r\nNote: /date/ is included by default in the Core module of TBX.', 10),
(107, 'note', 'http://www.datcatinfo.net/datcat/DC-382', 'A statement that provides further information on any part of a language resource entry.\r\n\r\nNote: /note/ is included by default in the Core module of TBX.', 11),
(108, 'term', 'http://www.datcatinfo.net/datcat/DC-508', 'A verbal designation of a general concept in a specific subject field. \r\n\r\nTerms can consist of single words or be composed of multiword strings. The distinguishing characteristic of a term is that it is assigned to a single concept, as opposed to a phraseological unit, which combines more than one concept in a lexicalized fashion to express complex situations. "Quality assurance system" is a term, whereas "satisfy quality requirements" is a phraseological unit, specifically a collocation.\r\n\r\nNote: /term/ is included by default in the Core module of TBX.', 12);

-- --------------------------------------------------------

--
-- Table structure for table `categories_permitted_values`
--

CREATE TABLE IF NOT EXISTS `categories_permitted_values` (
  `categories_id` int(11) NOT NULL,
  `permitted_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_permitted_values`
--

INSERT INTO `categories_permitted_values` (`categories_id`, `permitted_values_id`) VALUES
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 1),
(4, 2),
(5, 3),
(6, 3),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 11),
(18, 12),
(18, 13),
(18, 14),
(18, 15),
(18, 16),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 17),
(26, 18),
(26, 19),
(26, 20),
(27, 21),
(27, 22),
(27, 23),
(27, 24),
(28, 1),
(29, 25),
(29, 26),
(29, 27),
(29, 28),
(29, 29),
(29, 30),
(30, 1),
(31, 1),
(32, 2),
(33, 1),
(34, 1),
(35, 1),
(36, 3),
(37, 1),
(38, 31),
(38, 32),
(38, 33),
(39, 1),
(40, 34),
(40, 35),
(40, 36),
(40, 37),
(41, 38),
(41, 39),
(41, 40),
(41, 41),
(41, 42),
(42, 1),
(43, 3),
(44, 1),
(45, 1),
(46, 43),
(46, 44),
(46, 45),
(46, 46),
(47, 1),
(48, 47),
(48, 48),
(48, 49),
(48, 50),
(48, 51),
(48, 52),
(48, 53),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 54),
(54, 55),
(54, 56),
(54, 57),
(54, 58),
(54, 59),
(55, 1),
(56, 1),
(57, 1),
(58, 3),
(59, 60),
(59, 61),
(59, 62),
(60, 1),
(61, 1),
(62, 63),
(62, 64),
(62, 65),
(62, 66),
(62, 67),
(62, 68),
(62, 69),
(63, 1),
(64, 1),
(65, 1),
(66, 70),
(67, 1),
(68, 1),
(69, 1),
(70, 71),
(70, 72),
(71, 1),
(72, 1),
(73, 3),
(74, 1),
(75, 1),
(76, 1),
(77, 73),
(77, 74),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 75),
(87, 76),
(87, 77),
(88, 78),
(88, 79),
(88, 80),
(88, 81),
(88, 82),
(88, 83),
(88, 84),
(88, 85),
(88, 86),
(88, 87),
(88, 88),
(88, 89),
(88, 90),
(88, 91),
(88, 92),
(88, 93),
(88, 94),
(88, 95),
(89, 96),
(89, 97),
(89, 98),
(89, 99),
(90, 1),
(91, 100),
(91, 101),
(91, 102),
(91, 103),
(91, 104),
(91, 105),
(91, 106),
(91, 107),
(91, 108),
(91, 109),
(91, 110),
(91, 111),
(91, 112),
(91, 113),
(91, 114),
(91, 115),
(91, 116),
(91, 117),
(91, 118),
(91, 119),
(91, 120),
(91, 121),
(91, 122),
(91, 123),
(91, 124),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 125),
(107, 2),
(108, 1);

-- --------------------------------------------------------

--
-- Table structure for table `classifications`
--

CREATE TABLE IF NOT EXISTS `classifications` (
  `id` int(11) NOT NULL,
  `classification` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classifications`
--

INSERT INTO `classifications` (`id`, `classification`) VALUES
(1, 'admin'),
(2, 'adminNote'),
(3, 'descrip'),
(4, 'descripNote'),
(5, 'ref'),
(6, 'termNote'),
(7, 'transac'),
(8, 'transacNote'),
(9, 'xref'),
(10, 'date'),
(11, 'note'),
(12, 'term');

-- --------------------------------------------------------

--
-- Table structure for table `permitted_values`
--

CREATE TABLE IF NOT EXISTS `permitted_values` (
  `id` int(11) NOT NULL,
  `value` varchar(256) NOT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permitted_values`
--

INSERT INTO `permitted_values` (`id`, `value`, `type`) VALUES
(1, 'PCDATA', 1),
(2, 'noteText', 1),
(3, 'basicText', 1),
(4, 'admittedTerm-admn-sts', 2),
(5, 'deprecatedTerm-admn-sts', 2),
(6, 'legalTerm-admn-sts', 2),
(7, 'preferredTerm-admn-sts', 2),
(8, 'regulatedTerm-admn-sts', 2),
(9, 'standardizedTerm-admn-sts', 2),
(10, 'supersededTerm-admn-sts', 2),
(11, 'definingContext', 2),
(12, 'explanatoryContext', 2),
(13, 'associativeContext', 2),
(14, 'linguisticContext', 2),
(15, 'metalinguisticContext', 2),
(16, 'translatedContext', 2),
(17, 'intensionalDefinition', 2),
(18, 'extensionalDefinition', 2),
(19, 'partitiveDefinition', 2),
(20, 'translatedDefinition', 2),
(21, 'monodirectional', 2),
(22, 'bidirectional', 2),
(23, 'incommensurate', 2),
(24, 'undetermined', 2),
(25, 'starterElement', 2),
(26, 'workingElement', 2),
(27, 'consolidatedElement', 2),
(28, 'archiveElement', 2),
(29, 'importedElement', 2),
(30, 'exportedElement', 2),
(31, 'commonlyUsed', 2),
(32, 'infrequentlyUsed', 2),
(33, 'rarelyUsed', 2),
(34, 'masculine', 2),
(35, 'feminine', 2),
(36, 'neuter', 2),
(37, 'otherGender', 2),
(38, 'singular', 2),
(39, 'plural', 2),
(40, 'dual', 2),
(41, 'mass', 2),
(42, 'otherNumber', 2),
(43, 'recommendedTerm', 2),
(44, 'nonstandardizedTerm', 2),
(45, 'proposedTerm', 2),
(46, 'newTerm', 2),
(47, 'standardizedTerm', 2),
(48, 'preferredTerm', 2),
(49, 'admittedTerm', 2),
(50, 'deprecatedTerm', 2),
(51, 'supersededTerm', 2),
(52, 'legalTerm', 2),
(53, 'regulatedTerm', 2),
(54, 'noun', 2),
(55, 'verb', 2),
(56, 'adjective', 2),
(57, 'adverb', 2),
(58, 'properNoun', 2),
(59, 'other', 2),
(60, 'trademark', 2),
(61, 'serviceMark', 2),
(62, 'tradeName', 2),
(63, 'colloquialRegister', 2),
(64, 'neutralRegister', 2),
(65, 'technicalRegister', 2),
(66, 'in-houseRegister', 2),
(67, 'bench-levelRegister', 2),
(68, 'slangRegister', 2),
(69, 'vulgarRegister', 2),
(70, '1-10', 2),
(71, 'public', 2),
(72, 'confidential', 2),
(73, 'parallelText', 2),
(74, 'backgroundText', 2),
(75, 'archaicTerm', 2),
(76, 'outdatedTerm', 2),
(77, 'obsoleteTerm', 2),
(78, 'checkBox', 2),
(79, 'comboBox', 2),
(80, 'comboBoxElement', 2),
(81, 'dialogBox', 2),
(82, 'groupBox', 2),
(83, 'informativeMessage', 2),
(84, 'interactiveMessage', 2),
(85, 'menuItem', 2),
(86, 'progressBar', 2),
(87, 'pushButton', 2),
(88, 'radioButton', 2),
(89, 'slider', 2),
(90, 'spinBox', 2),
(91, 'tab', 2),
(92, 'tableText', 2),
(93, 'textBox', 2),
(94, 'toolTip', 2),
(95, 'user-definedType', 2),
(96, 'transdisciplinaryBorrowing', 2),
(97, 'translingualBorrowing', 2),
(98, 'loanTranslation', 2),
(99, 'neologism', 2),
(100, 'abbreviation', 2),
(101, 'acronym', 2),
(102, 'clippedTerm', 2),
(103, 'commonName', 2),
(104, 'entryTerm', 2),
(105, 'equation', 2),
(106, 'formula', 2),
(107, 'fullForm', 2),
(108, 'initialism', 2),
(109, 'internationalism', 2),
(110, 'internationalScientificTerm', 2),
(111, 'logicalExpression', 2),
(112, 'partNumber', 2),
(113, 'phraseologicalUnit', 2),
(114, 'transcribedForm', 2),
(115, 'transliteratedForm', 2),
(116, 'shortForm', 2),
(117, 'shortcut', 2),
(118, 'sku', 2),
(119, 'standardText', 2),
(120, 'string', 2),
(121, 'symbol', 2),
(122, 'synonym', 2),
(123, 'synonymousPhrase', 2),
(124, 'variant', 2),
(125, 'date', 1),

-- --------------------------------------------------------

--
-- Table structure for table `value_types`
--

CREATE TABLE IF NOT EXISTS `value_types` (
  `id` int(11) NOT NULL,
  `type` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `value_types`
--

INSERT INTO `value_types` (`id`, `type`) VALUES
(1, 'datatype'),
(2, 'picklist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `identifier` (`identifier`), ADD UNIQUE KEY `PID` (`PID`), ADD KEY `classification_id` (`classification_id`);

--
-- Indexes for table `categories_permitted_values`
--
ALTER TABLE `categories_permitted_values`
  ADD PRIMARY KEY (`categories_id`,`permitted_values_id`), ADD KEY `IDX_7929AE2CA21214B7` (`categories_id`), ADD KEY `IDX_7929AE2CBD0C40D7` (`permitted_values_id`);

--
-- Indexes for table `classifications`
--
ALTER TABLE `classifications`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `classification` (`classification`);

--
-- Indexes for table `permitted_values`
--
ALTER TABLE `permitted_values`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `value` (`value`), ADD KEY `type` (`type`);

--
-- Indexes for table `value_types`
--
ALTER TABLE `value_types`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `classifications`
--
ALTER TABLE `classifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `permitted_values`
--
ALTER TABLE `permitted_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `value_types`
--
ALTER TABLE `value_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`classification_id`) REFERENCES `classifications` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `categories_permitted_values`
--
ALTER TABLE `categories_permitted_values`
ADD CONSTRAINT `FK_7929AE2CA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `FK_7929AE2CBD0C40D7` FOREIGN KEY (`permitted_values_id`) REFERENCES `permitted_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permitted_values`
--
ALTER TABLE `permitted_values`
ADD CONSTRAINT `permitted_values_ibfk_1` FOREIGN KEY (`type`) REFERENCES `value_types` (`id`) ON DELETE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
