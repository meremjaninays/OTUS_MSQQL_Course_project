CREATE TABLE [dbo].[Tasks] (
    [SourceTaskId]  UNIQUEIDENTIFIER NOT NULL,
    [TargetPackageId]  BIGINT           NULL,
    [IntegrationDate] DATETIME2 (7)    NULL,
    PRIMARY KEY CLUSTERED ([SourceTaskId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_SourceSystemId]
    ON [dbo].[Tasks]([SourceTaskId] ASC)
    INCLUDE([TargetPackageId]);

