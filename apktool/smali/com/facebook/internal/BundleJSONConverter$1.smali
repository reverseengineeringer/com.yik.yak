.class final Lcom/facebook/internal/BundleJSONConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/BundleJSONConverter$Setter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setOnJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    return-void
.end method
