-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2018 at 12:25 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `caches`
--

CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `caches`
--

INSERT INTO `caches` (`name`, `data`, `expires`) VALUES
('Modules.wire/modules/', 'AdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeImage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeURL.module\nFileCompilerTags.module\nImageSizerEngineIMagick.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldCheckbox.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldName.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldText.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldURL.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLazyCron.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nPage/PageFrontEdit/PageFrontEdit.module\nPagePathHistory.module\nPagePaths.module\nPagePermissions.module\nPageRender.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessForgotPassword.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageClone.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageView.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module', '2010-04-08 03:10:10'),
('ModulesVerbose.info', '{\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.4\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.0\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.4\"},\"89\":{\"summary\":\"Field that stores a floating point (decimal) number\",\"core\":true,\"versionStr\":\"1.0.5\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.1\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.1\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.3\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.0\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"1.2.0\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.4\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.7\"},\"155\":{\"summary\":\"CKEditor textarea rich text editor.\",\"core\":true,\"versionStr\":\"1.5.7\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.1\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.4\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.3\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"161\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.2\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.1.9\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.4\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.6\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.2\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn\'t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.5\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.7\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.2\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"http:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.8.3\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/\",\"core\":true,\"versionStr\":\"0.0.1\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"http:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.2.1\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"http:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.9.6\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.0.7\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"113\":{\"summary\":\"Adds a render() method to all PageArray instances for basic unordered list generation of PageArrays.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.4\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.2\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"160\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.1\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.3\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.1.8\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.0\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.0.8\"},\"12\":{\"summary\":\"List pages in a hierarchal tree structure\",\"core\":true,\"versionStr\":\"1.1.8\"},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.4\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.2\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.4\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"159\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.3\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\"},\"125\":{\"summary\":\"Throttles the frequency of logins for a given account, helps to reduce dictionary attacks by introducing an exponential delay between logins.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.1.5\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"162\":{\"summary\":\"Template Engine for process wire\",\"href\":\"http:\\/\\/myhilarious.com\",\"versionStr\":\"0.0.1\"},\"163\":{\"summary\":\"Class that helps to generate urls\",\"href\":\"http:\\/\\/myhilarious.com\",\"versionStr\":\"0.0.1\"}}', '2010-04-08 03:10:10'),
('ModulesUninstalled.info', '{\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":107,\"versionStr\":\"1.0.7\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeOptions\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores single and multi select options.\",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeRepeater\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":105,\"versionStr\":\"1.0.5\",\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldRepeater\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":105,\"versionStr\":\"1.0.5\",\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1480071482,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1480071482,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":112,\"versionStr\":\"1.1.2\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":13,\"versionStr\":\"0.1.3\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTitleLanguage\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextareaLanguage\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextLanguage\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a single line of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupport\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"ProcessWire multi-language support.\",\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1480071482,\"installed\":false,\"configurable\":true,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"addFlag\":32},\"LanguageSupportFields\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language fields.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":9,\"versionStr\":\"0.0.9\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":114,\"versionStr\":\"1.1.4\",\"author\":\"adamspruijt, ryan\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1480071482,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"useNavJSON\":true},\"ProcessLanguageTranslator\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"http:\\/\\/processwire.com\\/talk\\/index.php\\/topic,284.0.html\",\"autoload\":true,\"singular\":true,\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1480071482,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"license\":\"MPL 2.0\"},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":2,\"versionStr\":\"0.0.2\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.\",\"autoload\":true,\"singular\":true,\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":6,\"versionStr\":\"0.0.6\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a \\\"copy\\\" option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1480071482,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":130,\"versionStr\":\"1.3.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1480071482,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1480071482,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1480071482,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"Helloworld\":{\"name\":\"Helloworld\",\"title\":\"Hello World\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"An example module used for demonstration purposes.\",\"href\":\"https:\\/\\/processwire.com\",\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1534580834,\"installed\":false},\"yink_helpers\":{\"name\":\"yink_helpers\",\"title\":\"Help in generating urls\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Help in generating urls\",\"href\":\"http:\\/\\/myhilarious.com\",\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1534582209,\"installed\":false,\"namespace\":\"\\\\\"},\"yink_hooks\":{\"name\":\"yink_hooks\",\"title\":\"Hooks from Yinka \",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Module that hooks into the processwire system\",\"href\":\"http:\\/\\/myhilarious.com\",\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1534582209,\"installed\":false,\"namespace\":\"\\\\\"}}', '2010-04-08 03:10:10'),
('Modules.site/modules/', 'Helloworld/Helloworld.module\nTemplateEngine/TemplateEngine.module\nyink_helpers/yink_helpers.module\nyink_hooks/yink_hooks.module\nyink_links/yink_links.module', '2010-04-08 03:10:10'),
('Permissions.names', '{\"logs-edit\":1014,\"logs-view\":1013,\"page-delete\":34,\"page-edit\":32,\"page-edit-recent\":1011,\"page-lister\":1006,\"page-lock\":54,\"page-move\":35,\"page-sort\":50,\"page-template\":51,\"page-view\":36,\"profile-edit\":53,\"user-admin\":52}', '2010-04-08 03:10:10'),
('FileCompiler__932cad04414bf83363442b01612b6da0', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/templates\\/home.php\",\"hash\":\"ce2c58cbc892ef68ab29cce2a4ec9cf9\",\"size\":456,\"time\":1534584181,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"9e6033c307c49d0b3909ee0d1730c8a2\",\"size\":808,\"time\":1534584181}}', '2010-04-08 03:10:10'),
('FileCompiler__270a47d1f0a799fe073c3a813aee9df1', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/templates\\/basic-page.php\",\"hash\":\"db5828c7dd5a5123c7963c0fb016f7a7\",\"size\":419,\"time\":1480071482,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php\",\"hash\":\"db5828c7dd5a5123c7963c0fb016f7a7\",\"size\":419,\"time\":1480071482}}', '2010-04-08 03:10:10'),
('FileCompiler__a5d468c638fb52f3cb278b22b732ab26', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1480071482,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1480071482}}', '2010-04-08 03:10:10'),
('FileCompiler__7c462be24318cee86534bf6254c18d20', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/TemplateEngine\\/TemplateEngine.module\",\"hash\":\"184f01ee71ed228a8080dc7592a44848\",\"size\":6552,\"time\":1534581662,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/TemplateEngine\\/TemplateEngine.module\",\"hash\":\"6b031442c6637bfc1d045d7835d44862\",\"size\":7608,\"time\":1534581662}}', '2010-04-08 03:10:10'),
('FileCompiler__20b13028adec52310535166426fa70b4', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/wigets.php\",\"hash\":\"a67600f2aaa22bc6ecf1f33ee9c90bc5\",\"size\":862,\"time\":1534581662,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/wigets.php\",\"hash\":\"a67600f2aaa22bc6ecf1f33ee9c90bc5\",\"size\":862,\"time\":1534581662}}', '2010-04-08 03:10:10'),
('FileCompiler__42644ec5a4f1f4238ffbba7e87680583', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/document.php\",\"hash\":\"4b19c89e1248ff528f7daa6b8626ade3\",\"size\":5782,\"time\":1534581887,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/document.php\",\"hash\":\"3c2a1c6a48793dab5e03c292ab7981a4\",\"size\":5821,\"time\":1534581887}}', '2010-04-08 03:10:10'),
('FileCompiler__35d6e9fd33814174eff30bcddbbee95e', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/yink_share.php\",\"hash\":\"1423473509e7c2c372393fdd16d2dd8f\",\"size\":5241,\"time\":1534581662,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/yink_share.php\",\"hash\":\"531aa5380b0f86056f347c71a3d79a5f\",\"size\":5345,\"time\":1534581662}}', '2010-04-08 03:10:10'),
('FileCompiler__d3035d02d5bd740f0df30c9b48ea1504', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/jsoner.php\",\"hash\":\"3e258e5a31f4e7000fdac1679d8ccad6\",\"size\":988,\"time\":1534581662,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/jsoner.php\",\"hash\":\"8b52376261a9d67206cc528987cbb75c\",\"size\":1001,\"time\":1534581662}}', '2010-04-08 03:10:10'),
('FileCompiler__754e607b8ae60f69c68757f98183d9a3', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/templates\\/init.php\",\"hash\":\"827805e0a1efa4dc206cf39ab094be7f\",\"size\":2270,\"time\":1534581618,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/init.php\",\"hash\":\"b9cd395d4ca0e4e48047525bbf7ea96f\",\"size\":2459,\"time\":1534581618}}', '2010-04-08 03:10:10'),
('FileCompiler__92cae42963e6da97cc9921d2899bc117', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_msg\\/yink_msg.php\",\"hash\":\"723a37f150a468450e886eba7e1e4db8\",\"size\":540,\"time\":1534581662,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_msg\\/yink_msg.php\",\"hash\":\"e9b89f718a26c2938ce7bfb933f8a9b7\",\"size\":683,\"time\":1534581662}}', '2010-04-08 03:10:10');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES
('Modules.info', '{\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1534580834,\"configurable\":19,\"namespace\":\"ProcessWire\\\\\"},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":104,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":100,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":100,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":104,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":105,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":103,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":100,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":106,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":120,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":104,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":107,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"155\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":157,\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":105,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":124,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":103,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"161\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":2,\"created\":1534580908,\"namespace\":\"ProcessWire\\\\\"},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":119,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":104,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":106,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":102,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":105,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":27,\"autoload\":\"template=admin\",\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":102,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":102,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":183,\"singular\":true,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":1,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":221,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":196,\"singular\":true,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":107,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":105,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":104,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":112,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"160\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":1,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1534580906,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":103,\"permission\":\"page-view\",\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":118,\"permission\":\"module-admin\",\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":108,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":108,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":120,\"permission\":\"page-edit\",\"singular\":1,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":108,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":118,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":24,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1534580834,\"configurable\":true,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":106,\"permission\":\"page-edit\",\"singular\":1,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":102,\"singular\":1,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":104,\"permission\":\"page-view\",\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":103,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"159\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1534580884,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":103,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1534580834,\"configurable\":\"ProcessUserConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":102,\"autoload\":\"function\",\"singular\":true,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":15,\"singular\":true,\"created\":1534580834,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1534580834,\"namespace\":\"ProcessWire\\\\\"},\"162\":{\"name\":\"TemplateEngine\",\"title\":\"Template Engine\",\"version\":1,\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1534581706,\"namespace\":\"\\\\\"},\"163\":{\"name\":\"yink_links\",\"title\":\"Help in generating urls\",\"version\":1,\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"namespace\":\"\\\\\"}}', '2010-04-08 03:10:10'),
('FileCompiler__4edbecd84686adcc768737c11741ba93', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/yink_helpers\\/yink_helpers.module\",\"hash\":\"a17872887996265849f273ee1cd40db4\",\"size\":9939,\"time\":1534582209,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/yink_helpers\\/yink_helpers.module\",\"hash\":\"f3a0ac1aa73a5b78a93437f6d1a7ea92\",\"size\":10004,\"time\":1534582209}}', '2010-04-08 03:10:10'),
('FileCompiler__a9d823b66ceea5023b4476d338a50a0d', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/yink_hooks\\/yink_hooks.module\",\"hash\":\"c32b069ec84e808bd6db8cfbabbb7d4c\",\"size\":2364,\"time\":1534582209,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/yink_hooks\\/yink_hooks.module\",\"hash\":\"345fc21b053abe097fc00200605ec33b\",\"size\":2416,\"time\":1534582209}}', '2010-04-08 03:10:10'),
('FileCompiler__19cf8d2a7c88d6f80c9688590d7ea0a0', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/yink_links\\/yink_links.module\",\"hash\":\"c3b8bc6a214b69882614c6402f77b803\",\"size\":1528,\"time\":1534582209,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/yink_links\\/yink_links.module\",\"hash\":\"1d6a83163a97be45a5bd55d5e6f9c44d\",\"size\":1567,\"time\":1534582209}}', '2010-04-08 03:10:10'),
('FileCompiler__45c8cc870946eb8a2a3458263dd46822', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/yink_home.php\",\"hash\":\"2fdc02b2d9ada262fc47a3637caff508\",\"size\":10356,\"time\":1534586675,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/yink_home.php\",\"hash\":\"5eab643ba9831b92869cabbd7a04b470\",\"size\":11424,\"time\":1534586675}}', '2010-04-08 03:10:10'),
('FileCompiler__ddf6d112f758fe7857b9722858647dd3', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/templates\\/main.php\",\"hash\":\"f8921c122b87d8b48dbdab99dd3ef1b2\",\"size\":7501,\"time\":1534581538,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/main.php\",\"hash\":\"b6b2f3c51dfa2d23807bc77e7a466288\",\"size\":7540,\"time\":1534581538}}', '2010-04-08 03:10:10'),
('FileCompiler__4ab4c1ee5d9095987fa927c8176217ef', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/header.php\",\"hash\":\"2efde3df5405f063576a7388558900ec\",\"size\":1339,\"time\":1534581661,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/header.php\",\"hash\":\"d529428685812803fcb1a799874b12d9\",\"size\":1365,\"time\":1534581661}}', '2010-04-08 03:10:10'),
('FileCompiler__3f5f5f8e0394ec686190b770e059a84e', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_msg\\/view.php\",\"hash\":\"22fb07fe00dda094be71cf4e428cfe4e\",\"size\":217,\"time\":1534581662,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_msg\\/view.php\",\"hash\":\"22fb07fe00dda094be71cf4e428cfe4e\",\"size\":217,\"time\":1534581662}}', '2010-04-08 03:10:10'),
('FileCompiler__abee8ecc8b575597d965b9048fd2b22b', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/left.php\",\"hash\":\"e41cd7c718232fd9f50e145b6c56dcec\",\"size\":5618,\"time\":1534581661,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/left.php\",\"hash\":\"e41cd7c718232fd9f50e145b6c56dcec\",\"size\":5618,\"time\":1534581661}}', '2010-04-08 03:10:10'),
('FileCompiler__00d81bd40e8d71dd2521d4224eb493b0', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/right.php\",\"hash\":\"2a706a59f8c2559f3fdef477a8735cb7\",\"size\":9980,\"time\":1534581661,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/right.php\",\"hash\":\"2a706a59f8c2559f3fdef477a8735cb7\",\"size\":9980,\"time\":1534581661}}', '2010-04-08 03:10:10'),
('FileCompiler__caba8b4aae2fab7dbe1b4c36bce1897b', '{\"source\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/form.php\",\"hash\":\"e7c40d77675436f595a31df42d25bd6a\",\"size\":6679,\"time\":1534586436,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp2\\/htdocs\\/test\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/\\/TemplateEngine\\/wigets\\/yink_home\\/form.php\",\"hash\":\"ef9bfa55dee7643a2a0760c8f2a772c5\",\"size\":6692,\"time\":1534586436}}', '2010-04-08 03:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`) VALUES
(2, 'admin'),
(3, 'user'),
(4, 'role'),
(5, 'permission'),
(1, 'home'),
(83, 'basic-page'),
(97, 'app');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups_fields`
--

CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fields_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups_fields`
--

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES
(2, 2, 1, NULL),
(2, 1, 0, NULL),
(3, 3, 0, NULL),
(3, 4, 2, NULL),
(4, 5, 0, NULL),
(5, 1, 0, NULL),
(3, 92, 1, NULL),
(83, 1, 0, NULL),
(1, 1, 0, NULL),
(97, 1, 0, NULL),
(97, 92, 1, NULL),
(97, 97, 2, NULL),
(97, 98, 3, NULL),
(97, 99, 4, NULL),
(97, 100, 5, NULL),
(97, 101, 6, NULL),
(97, 102, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES
(1, 'FieldtypePageTitle', 'title', 13, 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}'),
(2, 'FieldtypeModule', 'process', 25, 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),
(3, 'FieldtypePassword', 'pass', 24, 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),
(5, 'FieldtypePage', 'permissions', 24, 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),
(4, 'FieldtypePage', 'roles', 24, 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),
(92, 'FieldtypeEmail', 'email', 9, 'E-Mail Address', '{\"size\":70,\"maxlength\":255}'),
(97, 'FieldtypeText', 'firstname', 0, '', ''),
(98, 'FieldtypeText', 'surname', 0, '', ''),
(99, 'FieldtypeText', 'phone', 0, '', ''),
(100, 'FieldtypeTextarea', 'cover_letter', 0, '', ''),
(101, 'FieldtypeImage', 'passport', 0, '', '{\"fileSchema\":2}'),
(102, 'FieldtypeFile', 'resume', 0, '', '{\"fileSchema\":2}');

-- --------------------------------------------------------

--
-- Table structure for table `field_cover_letter`
--

CREATE TABLE `field_cover_letter` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_cover_letter`
--

INSERT INTO `field_cover_letter` (`pages_id`, `data`) VALUES
(1022, 'rgrfgfgfg'),
(1023, 'rgrfgfgfg'),
(1024, 'immytune002@gmail.com'),
(1025, 'immytune002@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `field_email`
--

CREATE TABLE `field_email` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_email`
--

INSERT INTO `field_email` (`pages_id`, `data`) VALUES
(41, 'timmytune002@gmail.com'),
(1022, 'tymm@ggg.vv'),
(1023, 'tymm@ggg.vv'),
(1024, 'timmytune002@gmail.com'),
(1025, 'timmytune002@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `field_firstname`
--

CREATE TABLE `field_firstname` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_firstname`
--

INSERT INTO `field_firstname` (`pages_id`, `data`) VALUES
(1025, 'Adedoyin');

-- --------------------------------------------------------

--
-- Table structure for table `field_pass`
--

CREATE TABLE `field_pass` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

--
-- Dumping data for table `field_pass`
--

INSERT INTO `field_pass` (`pages_id`, `data`, `salt`) VALUES
(41, 'KT3A4kQK9fZQUH4uwPuZ9TQ7T2B6Aaa', '$2y$11$5JnqUwpSw0DiKPRa8ILVtu'),
(40, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_passport`
--

CREATE TABLE `field_passport` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_passport`
--

INSERT INTO `field_passport` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1022, '28167847_1826480467413979_9064816848740794034_n.jpg', 0, '', '2018-08-18 10:56:31', '2018-08-18 10:56:31'),
(1023, '28167847_1826480467413979_9064816848740794034_n.jpg', 0, '', '2018-08-18 10:58:48', '2018-08-18 10:58:48'),
(1024, '28577098_1974369616224569_3822492932043293496_n.jpg', 0, '', '2018-08-18 11:02:00', '2018-08-18 11:02:00'),
(1025, '28577098_1974369616224569_3822492932043293496_n.jpg', 0, '', '2018-08-18 11:04:41', '2018-08-18 11:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `field_permissions`
--

CREATE TABLE `field_permissions` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_permissions`
--

INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES
(38, 32, 1),
(38, 34, 2),
(38, 35, 3),
(37, 36, 0),
(38, 36, 0),
(38, 50, 4),
(38, 51, 5),
(38, 52, 7),
(38, 53, 8),
(38, 54, 6);

-- --------------------------------------------------------

--
-- Table structure for table `field_phone`
--

CREATE TABLE `field_phone` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_phone`
--

INSERT INTO `field_phone` (`pages_id`, `data`) VALUES
(1022, 'Yinka'),
(1023, 'Yinka'),
(1024, '09554'),
(1025, '09554');

-- --------------------------------------------------------

--
-- Table structure for table `field_process`
--

CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_process`
--

INSERT INTO `field_process` (`pages_id`, `data`) VALUES
(6, 17),
(3, 12),
(8, 12),
(9, 14),
(10, 7),
(11, 47),
(16, 48),
(300, 104),
(21, 50),
(29, 66),
(23, 10),
(304, 138),
(31, 136),
(22, 76),
(30, 68),
(303, 129),
(2, 87),
(302, 121),
(301, 109),
(28, 76),
(1007, 150),
(1010, 159),
(1012, 160);

-- --------------------------------------------------------

--
-- Table structure for table `field_resume`
--

CREATE TABLE `field_resume` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_roles`
--

CREATE TABLE `field_roles` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_roles`
--

INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES
(40, 37, 0),
(41, 37, 0),
(41, 38, 2);

-- --------------------------------------------------------

--
-- Table structure for table `field_surname`
--

CREATE TABLE `field_surname` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_surname`
--

INSERT INTO `field_surname` (`pages_id`, `data`) VALUES
(1024, 'Yinka'),
(1025, 'Yinka');

-- --------------------------------------------------------

--
-- Table structure for table `field_title`
--

CREATE TABLE `field_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_title`
--

INSERT INTO `field_title` (`pages_id`, `data`) VALUES
(11, 'Templates'),
(16, 'Fields'),
(22, 'Setup'),
(3, 'Pages'),
(6, 'Add Page'),
(8, 'Tree'),
(9, 'Save Sort'),
(10, 'Edit'),
(21, 'Modules'),
(29, 'Users'),
(30, 'Roles'),
(2, 'Admin'),
(7, 'Trash'),
(27, '404 Not Found'),
(302, 'Insert Link'),
(23, 'Login'),
(304, 'Profile'),
(301, 'Empty Trash'),
(300, 'Search'),
(303, 'Insert Image'),
(28, 'Access'),
(31, 'Permissions'),
(32, 'Edit pages'),
(34, 'Delete pages'),
(35, 'Move pages (change parent)'),
(36, 'View pages'),
(50, 'Sort child pages'),
(51, 'Change templates on pages'),
(52, 'Administer users'),
(53, 'User can update profile/password'),
(54, 'Lock or unlock a page'),
(1, 'Home'),
(1006, 'Use Page Lister'),
(1007, 'Find'),
(1010, 'Recent'),
(1011, 'Can see recently edited pages'),
(1012, 'Logs'),
(1013, 'Can view system logs'),
(1014, 'Can manage system logs');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES
(1, 'FieldtypeTextarea', 0, '', '2018-08-18 08:27:14'),
(2, 'FieldtypeNumber', 0, '', '2018-08-18 08:27:14'),
(3, 'FieldtypeText', 0, '', '2018-08-18 08:27:14'),
(4, 'FieldtypePage', 0, '', '2018-08-18 08:27:14'),
(30, 'InputfieldForm', 0, '', '2018-08-18 08:27:14'),
(6, 'FieldtypeFile', 0, '', '2018-08-18 08:27:14'),
(7, 'ProcessPageEdit', 1, '', '2018-08-18 08:27:14'),
(10, 'ProcessLogin', 0, '', '2018-08-18 08:27:14'),
(12, 'ProcessPageList', 0, '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-08-18 08:27:14'),
(121, 'ProcessPageEditLink', 1, '', '2018-08-18 08:27:14'),
(14, 'ProcessPageSort', 0, '', '2018-08-18 08:27:14'),
(15, 'InputfieldPageListSelect', 0, '', '2018-08-18 08:27:14'),
(117, 'JqueryUI', 1, '', '2018-08-18 08:27:14'),
(17, 'ProcessPageAdd', 0, '', '2018-08-18 08:27:14'),
(125, 'SessionLoginThrottle', 11, '', '2018-08-18 08:27:14'),
(122, 'InputfieldPassword', 0, '', '2018-08-18 08:27:14'),
(25, 'InputfieldAsmSelect', 0, '', '2018-08-18 08:27:14'),
(116, 'JqueryCore', 1, '', '2018-08-18 08:27:14'),
(27, 'FieldtypeModule', 0, '', '2018-08-18 08:27:14'),
(28, 'FieldtypeDatetime', 0, '', '2018-08-18 08:27:14'),
(29, 'FieldtypeEmail', 0, '', '2018-08-18 08:27:14'),
(108, 'InputfieldURL', 0, '', '2018-08-18 08:27:14'),
(32, 'InputfieldSubmit', 0, '', '2018-08-18 08:27:14'),
(33, 'InputfieldWrapper', 0, '', '2018-08-18 08:27:14'),
(34, 'InputfieldText', 0, '', '2018-08-18 08:27:14'),
(35, 'InputfieldTextarea', 0, '', '2018-08-18 08:27:14'),
(36, 'InputfieldSelect', 0, '', '2018-08-18 08:27:14'),
(37, 'InputfieldCheckbox', 0, '', '2018-08-18 08:27:14'),
(38, 'InputfieldCheckboxes', 0, '', '2018-08-18 08:27:14'),
(39, 'InputfieldRadios', 0, '', '2018-08-18 08:27:14'),
(40, 'InputfieldHidden', 0, '', '2018-08-18 08:27:14'),
(41, 'InputfieldName', 0, '', '2018-08-18 08:27:14'),
(43, 'InputfieldSelectMultiple', 0, '', '2018-08-18 08:27:14'),
(45, 'JqueryWireTabs', 0, '', '2018-08-18 08:27:14'),
(46, 'ProcessPage', 0, '', '2018-08-18 08:27:14'),
(47, 'ProcessTemplate', 0, '', '2018-08-18 08:27:14'),
(48, 'ProcessField', 32, '', '2018-08-18 08:27:14'),
(50, 'ProcessModule', 0, '', '2018-08-18 08:27:14'),
(114, 'PagePermissions', 3, '', '2018-08-18 08:27:14'),
(97, 'FieldtypeCheckbox', 1, '', '2018-08-18 08:27:14'),
(115, 'PageRender', 3, '{\"clearCache\":1}', '2018-08-18 08:27:14'),
(55, 'InputfieldFile', 0, '', '2018-08-18 08:27:14'),
(56, 'InputfieldImage', 0, '', '2018-08-18 08:27:14'),
(57, 'FieldtypeImage', 0, '', '2018-08-18 08:27:14'),
(60, 'InputfieldPage', 0, '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2018-08-18 08:27:14'),
(61, 'TextformatterEntities', 0, '', '2018-08-18 08:27:14'),
(66, 'ProcessUser', 0, '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-08-18 08:27:14'),
(67, 'MarkupAdminDataTable', 0, '', '2018-08-18 08:27:14'),
(68, 'ProcessRole', 0, '{\"showFields\":[\"name\"]}', '2018-08-18 08:27:14'),
(76, 'ProcessList', 0, '', '2018-08-18 08:27:14'),
(78, 'InputfieldFieldset', 0, '', '2018-08-18 08:27:14'),
(79, 'InputfieldMarkup', 0, '', '2018-08-18 08:27:14'),
(80, 'InputfieldEmail', 0, '', '2018-08-18 08:27:14'),
(89, 'FieldtypeFloat', 1, '', '2018-08-18 08:27:14'),
(83, 'ProcessPageView', 0, '', '2018-08-18 08:27:14'),
(84, 'FieldtypeInteger', 0, '', '2018-08-18 08:27:14'),
(85, 'InputfieldInteger', 0, '', '2018-08-18 08:27:14'),
(86, 'InputfieldPageName', 0, '', '2018-08-18 08:27:14'),
(87, 'ProcessHome', 0, '', '2018-08-18 08:27:14'),
(90, 'InputfieldFloat', 0, '', '2018-08-18 08:27:14'),
(94, 'InputfieldDatetime', 0, '', '2018-08-18 08:27:14'),
(98, 'MarkupPagerNav', 0, '', '2018-08-18 08:27:14'),
(129, 'ProcessPageEditImageSelect', 1, '', '2018-08-18 08:27:14'),
(103, 'JqueryTableSorter', 1, '', '2018-08-18 08:27:14'),
(104, 'ProcessPageSearch', 1, '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-08-18 08:27:14'),
(105, 'FieldtypeFieldsetOpen', 1, '', '2018-08-18 08:27:14'),
(106, 'FieldtypeFieldsetClose', 1, '', '2018-08-18 08:27:14'),
(107, 'FieldtypeFieldsetTabOpen', 1, '', '2018-08-18 08:27:14'),
(109, 'ProcessPageTrash', 1, '', '2018-08-18 08:27:14'),
(111, 'FieldtypePageTitle', 1, '', '2018-08-18 08:27:14'),
(112, 'InputfieldPageTitle', 0, '', '2018-08-18 08:27:14'),
(113, 'MarkupPageArray', 3, '', '2018-08-18 08:27:14'),
(131, 'InputfieldButton', 0, '', '2018-08-18 08:27:14'),
(133, 'FieldtypePassword', 1, '', '2018-08-18 08:27:14'),
(134, 'ProcessPageType', 33, '{\"showFields\":[]}', '2018-08-18 08:27:14'),
(135, 'FieldtypeURL', 1, '', '2018-08-18 08:27:14'),
(136, 'ProcessPermission', 1, '{\"showFields\":[\"name\",\"title\"]}', '2018-08-18 08:27:14'),
(137, 'InputfieldPageListSelectMultiple', 0, '', '2018-08-18 08:27:14'),
(138, 'ProcessProfile', 1, '{\"profileFields\":[\"pass\",\"email\"]}', '2018-08-18 08:27:14'),
(139, 'SystemUpdater', 1, '{\"systemVersion\":15,\"coreVersion\":\"3.0.42\"}', '2018-08-18 08:27:14'),
(148, 'AdminThemeDefault', 10, '{\"colors\":\"classic\"}', '2018-08-18 08:27:14'),
(149, 'InputfieldSelector', 42, '', '2018-08-18 08:27:14'),
(150, 'ProcessPageLister', 32, '', '2018-08-18 08:27:14'),
(151, 'JqueryMagnific', 1, '', '2018-08-18 08:27:14'),
(155, 'InputfieldCKEditor', 0, '', '2018-08-18 08:27:14'),
(156, 'MarkupHTMLPurifier', 0, '', '2018-08-18 08:27:14'),
(159, 'ProcessRecentPages', 1, '', '2018-08-18 08:28:04'),
(160, 'ProcessLogger', 1, '', '2018-08-18 08:28:26'),
(161, 'InputfieldIcon', 0, '', '2018-08-18 08:28:28'),
(162, 'TemplateEngine', 3, '', '2018-08-18 08:41:46'),
(163, 'yink_links', 3, '', '2018-08-18 08:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `templates_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 05:09:00',
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES
(1, 0, 1, 'home', 9, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 0),
(2, 1, 2, 'processwire', 1035, '2018-08-18 08:28:51', 40, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 5),
(3, 2, 2, 'page', 21, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 0),
(6, 3, 2, 'add', 21, '2018-08-18 08:28:50', 40, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 0),
(7, 1, 2, 'trash', 1039, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 6),
(8, 3, 2, 'list', 1045, '2018-08-18 08:29:39', 40, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 1),
(9, 3, 2, 'sort', 1047, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 2),
(10, 3, 2, 'edit', 1045, '2018-08-18 08:29:39', 40, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 3),
(11, 22, 2, 'template', 21, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 0),
(16, 22, 2, 'field', 21, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 2),
(21, 2, 2, 'module', 21, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 2),
(22, 2, 2, 'setup', 21, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 1),
(23, 2, 2, 'login', 1035, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 4),
(27, 1, 29, 'http404', 1035, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 3, '2018-08-18 09:27:14', 4),
(28, 2, 2, 'access', 13, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 3),
(29, 28, 2, 'users', 29, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 0),
(30, 28, 2, 'roles', 29, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 1),
(31, 28, 2, 'permissions', 29, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 2),
(32, 31, 5, 'page-edit', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 2),
(34, 31, 5, 'page-delete', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 3),
(35, 31, 5, 'page-move', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 4),
(36, 31, 5, 'page-view', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 0),
(37, 30, 4, 'guest', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 0),
(38, 30, 4, 'superuser', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 1),
(41, 29, 3, 'admin', 1, '2018-08-18 08:28:51', 40, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 0),
(40, 29, 3, 'guest', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 1),
(50, 31, 5, 'page-sort', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 41, '2018-08-18 09:27:14', 5),
(51, 31, 5, 'page-template', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 41, '2018-08-18 09:27:14', 6),
(52, 31, 5, 'user-admin', 25, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 41, '2018-08-18 09:27:14', 10),
(53, 31, 5, 'profile-edit', 1, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 41, '2018-08-18 09:27:14', 13),
(54, 31, 5, 'page-lock', 1, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 41, '2018-08-18 09:27:14', 8),
(300, 3, 2, 'search', 1045, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 5),
(301, 3, 2, 'trash', 1047, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 5),
(302, 3, 2, 'link', 1041, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 6),
(303, 3, 2, 'image', 1041, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 2, '2018-08-18 09:27:14', 7),
(304, 2, 2, 'profile', 1025, '2018-08-18 08:27:14', 41, '2018-08-18 08:27:14', 41, '2018-08-18 09:27:14', 5),
(1006, 31, 5, 'page-lister', 1, '2018-08-18 08:27:14', 40, '2018-08-18 08:27:14', 40, '2018-08-18 09:27:14', 9),
(1007, 3, 2, 'lister', 1, '2018-08-18 08:27:14', 40, '2018-08-18 08:27:14', 40, '2018-08-18 09:27:14', 8),
(1010, 3, 2, 'recent-pages', 1, '2018-08-18 08:28:04', 40, '2018-08-18 08:28:04', 40, '2018-08-18 09:28:04', 9),
(1011, 31, 5, 'page-edit-recent', 1, '2018-08-18 08:28:05', 40, '2018-08-18 08:28:05', 40, '2018-08-18 09:28:05', 10),
(1012, 22, 2, 'logs', 1, '2018-08-18 08:28:26', 40, '2018-08-18 08:28:26', 40, '2018-08-18 09:28:26', 2),
(1013, 31, 5, 'logs-view', 1, '2018-08-18 08:28:27', 40, '2018-08-18 08:28:27', 40, '2018-08-18 09:28:27', 11),
(1014, 31, 5, 'logs-edit', 1, '2018-08-18 08:28:27', 40, '2018-08-18 08:28:27', 40, '2018-08-18 09:28:27', 12),
(1022, 1, 43, '2018-08-18-10-56-32', 1, '2018-08-18 09:56:32', 41, '2018-08-18 09:56:32', 41, '2018-08-18 10:56:32', 3),
(1023, 1, 43, '2018-08-18-10-58-48', 1, '2018-08-18 09:58:48', 41, '2018-08-18 09:58:48', 41, '2018-08-18 10:58:48', 4),
(1024, 1, 43, '2018-08-18-11-02-01', 1, '2018-08-18 10:02:01', 41, '2018-08-18 10:02:01', 41, '2018-08-18 11:02:01', 5),
(1025, 1, 43, '2018-08-18-11-04-43', 1, '2018-08-18 10:04:43', 41, '2018-08-18 10:04:43', 41, '2018-08-18 11:04:43', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pages_access`
--

CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_access`
--

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES
(37, 2, '2018-08-18 08:27:14'),
(38, 2, '2018-08-18 08:27:14'),
(32, 2, '2018-08-18 08:27:14'),
(34, 2, '2018-08-18 08:27:14'),
(35, 2, '2018-08-18 08:27:14'),
(36, 2, '2018-08-18 08:27:14'),
(50, 2, '2018-08-18 08:27:14'),
(51, 2, '2018-08-18 08:27:14'),
(52, 2, '2018-08-18 08:27:14'),
(53, 2, '2018-08-18 08:27:14'),
(54, 2, '2018-08-18 08:27:14'),
(1006, 2, '2018-08-18 08:27:14'),
(1011, 2, '2018-08-18 08:28:05'),
(1013, 2, '2018-08-18 08:28:27'),
(1014, 2, '2018-08-18 08:28:27'),
(1022, 1, '2018-08-18 09:56:32'),
(1023, 1, '2018-08-18 09:58:48'),
(1024, 1, '2018-08-18 10:02:01'),
(1025, 1, '2018-08-18 10:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `pages_parents`
--

CREATE TABLE `pages_parents` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `parents_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_parents`
--

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES
(2, 1),
(3, 1),
(3, 2),
(7, 1),
(22, 1),
(22, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(29, 28),
(30, 1),
(30, 2),
(30, 28),
(31, 1),
(31, 2),
(31, 28);

-- --------------------------------------------------------

--
-- Table structure for table `pages_sortfields`
--

CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session_login_throttle`
--

CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_attempt` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session_login_throttle`
--

INSERT INTO `session_login_throttle` (`name`, `attempts`, `last_attempt`) VALUES
('admin', 1, 1534584945);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES
(2, 'admin', 2, 8, 0, '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1480071482,\"ns\":\"ProcessWire\"}'),
(3, 'user', 3, 8, 0, '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(4, 'role', 4, 8, 0, '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(5, 'permission', 5, 8, 0, '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(1, 'home', 1, 0, 0, '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1534584181,\"ns\":\"\\\\\",\"roles\":[37]}'),
(29, 'basic-page', 83, 0, 0, '{\"slashUrls\":1,\"compile\":3,\"modified\":1480071482,\"ns\":\"\\\\\"}'),
(43, 'app', 97, 0, 0, '{\"slashUrls\":1,\"compile\":3,\"modified\":1534581305}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caches`
--
ALTER TABLE `caches`
  ADD PRIMARY KEY (`name`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fieldgroups_fields`
--
ALTER TABLE `fieldgroups_fields`
  ADD PRIMARY KEY (`fieldgroups_id`,`fields_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `field_cover_letter`
--
ALTER TABLE `field_cover_letter`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_cover_letter` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_email`
--
ALTER TABLE `field_email`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`);
ALTER TABLE `field_email` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_firstname`
--
ALTER TABLE `field_firstname`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_firstname` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_pass`
--
ALTER TABLE `field_pass`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_passport`
--
ALTER TABLE `field_passport`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`);
ALTER TABLE `field_passport` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `field_permissions`
--
ALTER TABLE `field_permissions`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_phone`
--
ALTER TABLE `field_phone`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_phone` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_process`
--
ALTER TABLE `field_process`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_resume`
--
ALTER TABLE `field_resume`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`);
ALTER TABLE `field_resume` ADD FULLTEXT KEY `description` (`description`);

--
-- Indexes for table `field_roles`
--
ALTER TABLE `field_roles`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_surname`
--
ALTER TABLE `field_surname`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_surname` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_title`
--
ALTER TABLE `field_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255));
ALTER TABLE `field_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `templates_id` (`templates_id`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `status` (`status`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `pages_access`
--
ALTER TABLE `pages_access`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `templates_id` (`templates_id`);

--
-- Indexes for table `pages_parents`
--
ALTER TABLE `pages_parents`
  ADD PRIMARY KEY (`pages_id`,`parents_id`);

--
-- Indexes for table `pages_sortfields`
--
ALTER TABLE `pages_sortfields`
  ADD PRIMARY KEY (`pages_id`);

--
-- Indexes for table `session_login_throttle`
--
ALTER TABLE `session_login_throttle`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fieldgroups_id` (`fieldgroups_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1026;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
