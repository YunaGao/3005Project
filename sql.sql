-- ----------------------------
-- Table structure for dbo.AspNetRoles
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.AspNetRoles";
CREATE TABLE `dbo.AspNetRoles` (`Id`, `Name`);

-- ----------------------------
-- Records of dbo.AspNetRoles
-- ----------------------------

-- ----------------------------
-- Table structure for dbo.AspNetUserClaims
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.AspNetUserClaims";
CREATE TABLE `dbo.AspNetUserClaims` (`Id`, `UserId`, `ClaimType`, `ClaimValue`);

-- ----------------------------
-- Records of dbo.AspNetUserClaims
-- ----------------------------

-- ----------------------------
-- Table structure for dbo.AspNetUserLogins
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.AspNetUserLogins";
CREATE TABLE `dbo.AspNetUserLogins` (`LoginProvider`, `ProviderKey`, `UserId`);

-- ----------------------------
-- Records of dbo.AspNetUserLogins
-- ----------------------------

-- ----------------------------
-- Table structure for dbo.AspNetUserRoles
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.AspNetUserRoles";
CREATE TABLE `dbo.AspNetUserRoles` (`UserId`, `RoleId`);

-- ----------------------------
-- Records of dbo.AspNetUserRoles
-- ----------------------------

-- ----------------------------
-- Table structure for dbo.AspNetUsers
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.AspNetUsers";
CREATE TABLE `dbo.AspNetUsers` (`Id`, `Name`, `Address`, `PasswordHash`, `SecurityStamp`, `UserName`);

-- ----------------------------
-- Records of dbo.AspNetUsers
-- ----------------------------

-- ----------------------------
-- Table structure for dbo.Authors
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.Authors";
CREATE TABLE `dbo.Authors` (`ID`, `Name`, `Book_ID`);

-- ----------------------------
-- Records of dbo.Authors
-- ----------------------------
INSERT INTO "main"."dbo.Authors" VALUES (1, 'Author 1', 3);
INSERT INTO "main"."dbo.Authors" VALUES (2, 'Author 2', 3);

-- ----------------------------
-- Table structure for dbo.BankingAccounts
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.BankingAccounts";
CREATE TABLE `dbo.BankingAccounts` (`ID`, `BookId`, `Percentage`);

-- ----------------------------
-- Records of dbo.BankingAccounts
-- ----------------------------
INSERT INTO "main"."dbo.BankingAccounts" VALUES (1, 1, 0.30);
INSERT INTO "main"."dbo.BankingAccounts" VALUES (1, 2, 0.40);
INSERT INTO "main"."dbo.BankingAccounts" VALUES (2, 3, 0.20);

-- ----------------------------
-- Table structure for dbo.BasketItems
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.BasketItems";
CREATE TABLE `dbo.BasketItems` (`ID`, `BasketID`, `BookID`, `Amount`);

-- ----------------------------
-- Records of dbo.BasketItems
-- ----------------------------
INSERT INTO "main"."dbo.BasketItems" VALUES (3, 'a', 1, 1);
INSERT INTO "main"."dbo.BasketItems" VALUES (4, 'a', 3, 1);

-- ----------------------------
-- Table structure for dbo.Books
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.Books";
CREATE TABLE `dbo.Books` (`ID`, `Name`, `ISBN`, `Price`, `Pages`, `PublisherId`);

-- ----------------------------
-- Records of dbo.Books
-- ----------------------------
INSERT INTO "main"."dbo.Books" VALUES (1, 'Computers Book', 1, 631.00, 100, 1);
INSERT INTO "main"."dbo.Books" VALUES (2, 'Gaming Book', 2, 239.00, 200, 1);
INSERT INTO "main"."dbo.Books" VALUES (3, 'Networking Book', 3, 369.00, 300, 2);

-- ----------------------------
-- Table structure for dbo.Contacts
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.Contacts";
CREATE TABLE `dbo.Contacts` (`ID`, `PublisherID`, `Phone`);

-- ----------------------------
-- Records of dbo.Contacts
-- ----------------------------
INSERT INTO "main"."dbo.Contacts" VALUES (1, 1, 'Phone 1');
INSERT INTO "main"."dbo.Contacts" VALUES (2, 2, 'Phone 2');

-- ----------------------------
-- Table structure for dbo.OrderItems
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.OrderItems";
CREATE TABLE `dbo.OrderItems` (`ID`, `OrderID`, `BookID`, `Amount`, `BookName`, `Price`);

-- ----------------------------
-- Records of dbo.OrderItems
-- ----------------------------
INSERT INTO "main"."dbo.OrderItems" VALUES (1, 1, 1, 1, 'Computers Book', 631.00);

-- ----------------------------
-- Table structure for dbo.Orders
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.Orders";
CREATE TABLE `dbo.Orders` (`ID`, `UserID`, `DeliveryName`, `DeliveryAddress`, `TotalPrice`, `Status`);

-- ----------------------------
-- Records of dbo.Orders
-- ----------------------------
INSERT INTO "main"."dbo.Orders" VALUES (1, 'a', 'a', 1, 631.00, 'Pending');

-- ----------------------------
-- Table structure for dbo.Publishers
-- ----------------------------
DROP TABLE IF EXISTS "main"."dbo.Publishers";
CREATE TABLE `dbo.Publishers` (`ID`, `Name`, `Address`, `BankingAccId`, `BankingAccount_ID`, `BankingAccount_BookId`);

-- ----------------------------
-- Records of dbo.Publishers
-- ----------------------------
INSERT INTO "main"."dbo.Publishers" VALUES (1, 'Publisher 1', 'Addr 1', '', '', '');
INSERT INTO "main"."dbo.Publishers" VALUES (2, 'Publisher 2', 'Addr 1', '', '', '');