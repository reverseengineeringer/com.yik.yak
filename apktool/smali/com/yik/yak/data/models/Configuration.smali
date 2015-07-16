.class public Lcom/yik/yak/data/models/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public basecampConfiguration:Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

.field public draftConfiguration:Lcom/yik/yak/data/models/Configuration$DraftConfiguration;

.field public endpointUrl:Ljava/lang/String;

.field public handleEnabled:Z

.field public sharingConfiguration:Lcom/yik/yak/data/models/Configuration$SharingConfiguration;

.field public threatChecks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Configuration$ThreatCheck;",
            ">;"
        }
    .end annotation
.end field

.field public votingConfiguration:Lcom/yik/yak/data/models/Configuration$VotingConfiguration;

.field public yikYakRepApplicationConfiguration:Lcom/yik/yak/data/models/Configuration$YikYakRepApplicationConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static get()Lcom/yik/yak/data/models/Configuration;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LAJ;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0, p0}, LAJ;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    return-object v0
.end method
