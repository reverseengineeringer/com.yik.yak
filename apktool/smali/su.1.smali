.class public Lsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LsO;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/GCMReceiver;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lsu;->a:Lcom/mixpanel/android/mpmetrics/GCMReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LsK;)V
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p1}, LsK;->c()LsP;

    move-result-object v0

    invoke-interface {v0}, LsP;->a()V

    .line 234
    return-void
.end method
