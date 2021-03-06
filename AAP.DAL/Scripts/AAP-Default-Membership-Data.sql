USE [AAP-Web]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 05/24/2013 18:07:46 ******/
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'Management')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (4, N'Student')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (3, N'Teacher')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 05/24/2013 18:07:46 ******/
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A1C800D6CF0E AS DateTime), NULL, 1, NULL, 0, N'AKvMYXNgsjECUi8tQRy1OOfQWdyuSmwy12ymRUeZKDj7qCICWYZc0oktDSOkM0ijYA==', CAST(0x0000A1C800D6CF0E AS DateTime), N'', NULL, NULL)
/****** Object:  Table [dbo].[UserProfile]    Script Date: 05/24/2013 18:07:46 ******/
SET IDENTITY_INSERT [dbo].[UserProfile] ON
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (1, N'Admin')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 05/24/2013 18:07:46 ******/
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 1)
