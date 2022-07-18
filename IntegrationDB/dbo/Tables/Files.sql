CREATE TABLE [dbo].[Files] (
    [SourceFileId]   UNIQUEIDENTIFIER NOT NULL,
    [TargetFileId]   BIGINT           NULL,
    [SourceTaskId]           UNIQUEIDENTIFIER NULL,
    [FileBase64String] VARCHAR (MAX)    NULL,
    [FileName]         VARCHAR (250)    NULL,
    [IntegrationDate]  DATETIME2 (7)    NULL,
    PRIMARY KEY CLUSTERED ([SourceFileId] ASC),
    CONSTRAINT [CHK_Files_FileName] CHECK ([FileName] like '%.%'),
    FOREIGN KEY ([SourceTaskId]) REFERENCES [dbo].[Tasks] ([SourceTaskId])
);


GO
CREATE NONCLUSTERED INDEX [IX_SourceSystemId]
    ON [dbo].[Files]([SourceFileId] ASC)
    INCLUDE([TargetFileId]);

