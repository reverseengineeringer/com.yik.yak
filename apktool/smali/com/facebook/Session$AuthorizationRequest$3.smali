.class Lcom/facebook/Session$AuthorizationRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Session$StartActivityDelegate;


# instance fields
.field final synthetic this$0:Lcom/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 0

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$3;->this$0:Lcom/facebook/Session$AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 1895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 1889
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
