.class Lws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lwr;


# direct methods
.method constructor <init>(Lwr;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lws;->a:Lwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lws;->a:Lwr;

    iget-object v0, v0, Lwr;->a:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->o(Lcom/nispok/snackbar/Snackbar;)V

    .line 908
    return-void
.end method
