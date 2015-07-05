.class public Lcom/yik/yak/data/models/Website;
.super Lcom/yik/yak/data/models/YikYakObject;
.source "SourceFile"


# instance fields
.field category:Ljava/lang/String;

.field name:Ljava/lang/String;

.field shouldDisplay:Z

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yik/yak/data/models/YikYakObject;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yik/yak/data/models/Website;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yik/yak/data/models/Website;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yik/yak/data/models/Website;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yik/yak/data/models/Website;->category:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yik/yak/data/models/Website;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setShouldDisplay(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yik/yak/data/models/Website;->shouldDisplay:Z

    .line 31
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yik/yak/data/models/Website;->url:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public shouldDisplay()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Website;->shouldDisplay:Z

    return v0
.end method
