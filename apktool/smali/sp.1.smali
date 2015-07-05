.class public Lsp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LsK;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/GCMReceiver;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lsp;->b:Lcom/mixpanel/android/mpmetrics/GCMReceiver;

    iput-object p2, p0, Lsp;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()LsL;

    move-result-object v0

    iget-object v1, p0, Lsp;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LsL;->a(Ljava/lang/String;)V

    .line 226
    return-void
.end method
