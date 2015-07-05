.class public Lcom/yik/yak/data/models/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public basecampConfiguration:Lcom/yik/yak/data/models/Configuration$BasecampConfiguration;

.field public defaultEndpoint:Ljava/lang/String;

.field public draftConfiguration:Lcom/yik/yak/data/models/Configuration$DraftConfiguration;

.field public endpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Configuration$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field public googleAnalyticsConfiguration:Lcom/yik/yak/data/models/Configuration$GoogleAnalyticsConfiguration;

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

    .line 119
    return-void
.end method

.method public static get()Lcom/yik/yak/data/models/Configuration;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LAw;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-virtual {v0, p0}, LAw;->a(Landroid/content/Context;)Lcom/yik/yak/data/models/Configuration;

    move-result-object v0

    return-object v0
.end method
