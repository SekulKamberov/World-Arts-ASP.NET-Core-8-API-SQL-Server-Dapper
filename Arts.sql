USE [master]
GO

CREATE DATABASE [Arts]
GO

USE [Arts]
GO

CREATE TABLE [dbo].[WorldArts](
	[Id] [INT] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[author] [NVARCHAR](100) NULL,
	[Country] [NVARCHAR](100) NULL,
	[Link] [NVARCHAR](100) NULL,
	[category] [NVARCHAR](20) NULL,  
	[ImageLink] [NVARCHAR](200) NULL, 
	[Title] [NVARCHAR](100) NULL,
	[Year] [INT] NULL,
	[Price] [INT] NULL 
)  
GO 
																													--author, Country, ImageLink, category, Link, Title, Year, Price
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://www.dailyartmagazINe.com/wp-content/uploads/2021/10/featured-image-1-2048x1152.jpg', 'ArnolfINi PORtrait AND HIS Wife', 1434, 12390000)
GO
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://upload.wikimedia.ORg/wikipedia/commons/5/54/Jan_van_Eyck_-_The_Annunciation_-_Google_Art_Project_crop.jpg', 'Annunciation', 1436, 11330500)
GO
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://upload.wikimedia.ORg/wikipedia/commons/2/21/La_Vierge_du_chancelier_RolIN_-_Jan_van_Eyck_-_Mus%C3%A9e_du_Louvre_PeINtures_INV_1271.jpg', 'Madonna of ChancellOR RolIN', 1435, 14330500)
GO
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://upload.wikimedia.ORg/wikipedia/commons/thumb/6/6a/Jan_van_Eyck_-_L%C3%A9al_Souvenir_-_National_Gallery%2C_London.jpg/800px-Jan_van_Eyck_-_L%C3%A9al_Souvenir_-_National_Gallery%2C_London.jpg', 'Léal Souvenir', 1432, 19530500)
GO
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://upload.wikimedia.ORg/wikipedia/commons/b/bb/Jan_van_Eyck_-_The_Madonna_IN_the_Church_-_Google_Art_Project.jpg', 'Madonna IN the Church', 1440, 16531200)
GO 
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://upload.wikimedia.ORg/wikipedia/commons/3/37/Jan_van_Eyck_-_VirgIN_AND_Child%2C_with_SaINts_AND_DonOR_-_1441_-_Frick_Collection.jpg', 'Madonna of Jan Vos', 1441, 16591200)
GO
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://upload.wikimedia.ORg/wikipedia/commons/e/eb/Hubert_van_Eyck_OR_Jan_van_Eyck_OR_both_-_The_Three_Marys_at_the_Tomb_-_Google_Art_Project.jpg', 'The Three Marys at the Tomb', 1426, 36511200)
GO
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://upload.wikimedia.ORg/wikipedia/commons/5/5e/After_van_Eyck_Woman_at_Her_Toilet_%28MA%29.jpg', 'Woman BathINg', 1441, 16511200)
GO
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://upload.wikimedia.ORg/wikipedia/commons/9/9e/SaINt_Luke_DrawINg_the_VirgIN_MFA_Boston.jpg', 'SaINt Luke DrawINg the VirgIN', 1440, 21611800)
GO
INSERT [dbo].[WorldArts] ( [author], [Country], [Link], [category], [ImageLink], [Title], [Year], [Price]) VALUES ( 'Jan Van Eyck ', 'Bruges', 'https://upload.wikimedia.ORg/wikipedia/commons/8/8b/PORtrait_of_a_Man_by_Jan_van_Eyck-small.jpg', 'Renaissance', 'https://www.meISterdrucke.uk/kunstwerke/1260px/Hubert_Jan_van_%281390_1441%29_Eyck_-_Erythraean_Sibyl_AND_the_Cumaean_Sibyl_FROM_the_exteriOR_of_the_left_wINg_of_the_-_%28MeISterDrucke-1439902%29.jpg', 'The Erythraean Sibyl', 1443, 21795900)
GO

--https://bluesurfart.com/collections/jan-van-eyck?page=2
  
-- SELECT * FROM WorldArts

CREATE NONCLUSTERED INDEX [IX_author] ON [dbo].[WorldArts]
(
	[author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
 
 
CREATE NONCLUSTERED INDEX [IX_category] ON [dbo].[WorldArts]
(
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
 
CREATE NONCLUSTERED INDEX [IX_Title] ON [dbo].[WorldArts]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO 
 
CREATE procedure [dbo].[spAddArt]
	@author NVARCHAR(100) = NULL,
	@Country NVARCHAR(100) = NULL,
	@Link NVARCHAR(100) = NULL, 
	@category NVARCHAR(20) = NULL,
	@ImageLink NVARCHAR(200) = NULL, 
	@Title NVARCHAR(100)= NULL,
	@Year INT = NULL,
	@Price INT = NULL,
	@Id INT OUTPUT
AS
BEGIN
  INSERT INTO WorldArts 
  ([author],[Country],[Link],[category],[ImageLink],[Title],[Year],[Price])
  values(@author,@Country,@Link,@category,@ImageLink,@Title,@Year,@Price)
  /* return recently added column */
 SET @Id= SCOPE_IDENTITY()
END
GO
 
CREATE PROC [dbo].[spDeleteArt]
@Id INT
AS
BEGIN
  delete FROM dbo.WorldArts
  WHERE Id=@Id
END
GO
 
CREATE PROC [dbo].[spGetArtById]
@Id INT
AS
BEGIN
  SELECT * FROM dbo.WorldArts
  WHERE Id=@Id
END
GO
 
CREATE PROC [dbo].[spGetArts]  
 @page INT=1,  
 @limit INT=10,  
 @categories NVARCHAR(200)= NULL,  
 @searchTerm NVARCHAR(40) = NULL,  
 @sortColumn NVARCHAR(30)='id',  
 @sortDirection NVARCHAR(30)='ASC'  
AS  
BEGIN  
  
SELECT * FROM dbo.WorldArts  
 WHERE (@searchTerm IS NULL OR author LIKE '%'+@searchTerm+'%' OR title LIKE '%'+@searchTerm+'%')  
 AND (@categories IS NULL OR [category] IN  
(SELECT * FROM strINg_split(@categories,',')))  
ORDER BY   
CASE WHEN @sortColumn='id' AND @sortDirection='ASC' THEN id END,  
CASE WHEN @sortColumn='id' AND @sortDirection='DESC' THEN id END DESC,  
CASE WHEN @sortColumn='title' AND @sortDirection='ASC' THEN title END,  
CASE WHEN @sortColumn='title' AND @sortDirection='DESC' THEN title  END DESC,  
CASE WHEN @sortColumn='author' AND @sortDirection='ASC' THEN author END,  
CASE WHEN @sortColumn='author' AND @sortDirection='DESC' THEN author  END DESC,  
CASE WHEN @sortColumn='category' AND @sortDirection='ASC' THEN [category] END,  
CASE WHEN @sortColumn='category' AND @sortDirection='DESC' THEN [category] END DESC  
  
OFFSET (@page - 1) * @limit ROWS  
FETCH NEXT @limit ROWS ONLY;  
  
SELECT COUNT(id) AS TotalRecORds,CAST(CEILING((COUNT(id)*1.0)/@limit)AS INT) AS TotalPages 
 FROM dbo.WorldArts  
 WHERE (@searchTerm IS NULL OR author LIKE '%'+@searchTerm+'%' OR title LIKE '%'+@searchTerm+'%')  
 AND (@categories IS NULL OR [category] IN  
(SELECT * FROM strINg_split(@categories,',')))   
END  
GO

CREATE PROCEDURE [dbo].[spGetCategories]
AS
BEGIN
 SELECT DISTINCT [category] FROM dbo.WorldArts ORDER BY [category]
END
GO
 
CREATE procedure [dbo].[spUpdateArt]
	@Id INT,
	@author NVARCHAR(100) = NULL,
	@Country NVARCHAR(100)= NULL,
	@Link NVARCHAR(100)= NULL, 
	@category NVARCHAR(20)= NULL,
	@ImageLink NVARCHAR(200)= NULL, 
	@Title NVARCHAR(100)= NULL,
	@Year INT = NULL,
	@Price INT = NULL
AS
BEGIN
   UPDATE  dbo.WorldArts
   SET [author]=@author,
   [Country]=@Country,
   [Link]=@Link,
   [category]=@category,
   [ImageLink]=@ImageLink, 
   [Title]=@Title,
   [Year]=@Year,
   [Price]=@Price
  WHERE Id=@Id
END
GO
 
 

