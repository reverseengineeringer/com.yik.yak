.class public Lcom/parse/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final body:Lcom/parse/entity/mime/content/ContentBody;

.field private final header:Lcom/parse/entity/mime/Header;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/entity/mime/content/ContentBody;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    if-nez p2, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/parse/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/parse/entity/mime/FormBodyPart;->body:Lcom/parse/entity/mime/content/ContentBody;

    .line 57
    new-instance v0, Lcom/parse/entity/mime/Header;

    invoke-direct {v0}, Lcom/parse/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lcom/parse/entity/mime/FormBodyPart;->header:Lcom/parse/entity/mime/Header;

    .line 59
    invoke-virtual {p0, p2}, Lcom/parse/entity/mime/FormBodyPart;->generateContentDisp(Lcom/parse/entity/mime/content/ContentBody;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/parse/entity/mime/FormBodyPart;->generateContentType(Lcom/parse/entity/mime/content/ContentBody;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/parse/entity/mime/FormBodyPart;->generateTransferEncoding(Lcom/parse/entity/mime/content/ContentBody;)V

    .line 62
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/parse/entity/mime/FormBodyPart;->header:Lcom/parse/entity/mime/Header;

    new-instance v1, Lcom/parse/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcom/parse/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parse/entity/mime/Header;->addField(Lcom/parse/entity/mime/MinimalField;)V

    .line 81
    return-void
.end method

.method protected generateContentDisp(Lcom/parse/entity/mime/content/ContentBody;)V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/parse/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {p1}, Lcom/parse/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-interface {p1}, Lcom/parse/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/parse/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected generateContentType(Lcom/parse/entity/mime/content/ContentBody;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-interface {p1}, Lcom/parse/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-interface {p1}, Lcom/parse/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-interface {p1}, Lcom/parse/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/parse/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected generateTransferEncoding(Lcom/parse/entity/mime/content/ContentBody;)V
    .locals 2

    .prologue
    .line 107
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lcom/parse/entity/mime/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public getBody()Lcom/parse/entity/mime/content/ContentBody;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parse/entity/mime/FormBodyPart;->body:Lcom/parse/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcom/parse/entity/mime/Header;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parse/entity/mime/FormBodyPart;->header:Lcom/parse/entity/mime/Header;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parse/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
